require 'adwords_api'

class LoginController < ApplicationController

  skip_before_filter :authenticate

  GOOGLE_LOGOUT_URL = 'https://www.google.com/accounts/Logout'

  def prompt()
    api = get_adwords_api()
    token = session[:token]
    if token
      redirect_to home_index_path
    else
      begin
        token = api.authorize({:oauth2_callback => login_callback_url})
      rescue AdsCommon::Errors::OAuth2VerificationRequired => e
        @login_url = e.oauth_url
      end
    end
  end

  def callback()
    api = get_adwords_api()
    begin
      token = api.authorize(
          {
            :oauth2_callback => login_callback_url,
            :oauth2_verification_code => params[:code]
          }
      )
      session[:token] = hash_from_token(token)
      flash.notice = 'Authorized successfully'
      redirect_to home_index_path
    rescue AdsCommon::Errors::OAuth2VerificationRequired => e
      flash.alert = 'Authorization failed'
      redirect_to login_prompt_path
    end
  end

  def logout()
    [:selected_account, :token].each {|key| session.delete(key)}
    redirect_to GOOGLE_LOGOUT_URL
  end

  private

  def hash_from_token(token)
    return {
      :access_token => token.token,
      :refresh_token => token.refresh_token,
      :expires_in => token.expires_in,
      :expires_at => token.expires_at,
      :params => token.params,
      :options => token.options
    }
  end
end
