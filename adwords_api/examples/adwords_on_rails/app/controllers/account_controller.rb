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

    # First get the AdWords manager account ID.
    customer_srv = adwords.service(:CustomerService, get_api_version())
    customers = customer_srv.get_customers()
    adwords.credential_handler.set_credential(
        :client_customer_id, customers.first[:customer_id])

    # Then find all child accounts using that ID.
    managed_customer_srv = adwords.service(
        :ManagedCustomerService, get_api_version())
    selector = {:fields => ['CustomerId', 'Name']}
    result = nil
    begin
      result = managed_customer_srv.get(selector)
    rescue AdwordsApi::Errors::ApiException => e
      logger.fatal("Exception occurred: %s\n%s" % [e.to_s, e.message])
      flash.now[:alert] =
          'API request failed with an error, see logs for details'
    end
    return result
  end
end
