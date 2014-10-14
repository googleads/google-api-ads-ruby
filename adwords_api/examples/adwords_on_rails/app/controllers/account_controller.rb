class AccountController < ApplicationController

  def index()
    @selected_account = selected_account
    graph = get_accounts_graph()
    @accounts = Account.get_accounts_map(graph)
  end

  def select()
    self.selected_account = params[:account_id]
    flash[:notice] = "Selected account: %s" % selected_account
    redirect_to home_index_path
  end

  private

  def get_accounts_graph()
    adwords = get_adwords_api()
    service = adwords.service(:ManagedCustomerService, get_api_version())
    selector = {:fields => ['Login', 'CustomerId', 'CompanyName']}
    result = nil
    begin
      result = adwords.use_mcc {service.get(selector)}
    rescue AdwordsApi::Errors::ApiException => e
      logger.fatal("Exception occurred: %s\n%s" % [e.to_s, e.message])
      flash.now[:alert] =
          'API request failed with an error, see logs for details'
    end
    return result
  end
end
