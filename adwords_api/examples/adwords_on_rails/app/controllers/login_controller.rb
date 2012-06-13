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
        token = api.authorize({:oauth_callback => login_callback_url})
      rescue AdsCommon::Errors::OAuthVerificationRequired => e
        @login_url = e.oauth_url
        session[:request_token] = e.request_token
      end
    end
  end

  def callback()
    api = get_adwords_api()
    begin
      request_token = session[:request_token]
      session[:token] = api.authorize(
           {:oauth_request_token => request_token,
            :oauth_verification_code => params[:oauth_verifier]})
      session.delete(:request_token)
      flash.notice = 'Authorized successfully'
      redirect_to home_index_path
    rescue AdsCommon::Errors::OAuthVerificationRequired => e
      flash.alert = 'Authorization failed'
      redirect_to login_prompt_path
    end
  end

  def logout()
    [:selected_account, :request_token, :token].each {|key| session.delete(key)}
    redirect_to GOOGLE_LOGOUT_URL
  end
end
