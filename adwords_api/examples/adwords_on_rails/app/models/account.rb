class Account
  attr_reader :customer_id
  attr_reader :login
  attr_reader :company_name

  attr_accessor :parent
  attr_reader :child_accounts

  def initialize(api_account)
    @customer_id = api_account[:customer_id]
    @login = api_account[:login]
    @company_name = api_account[:company_name]
    @child_accounts = []
  end

  def self.get_accounts_map(graph)
    accounts = {}
    if graph and graph[:accounts]
      accounts = graph[:accounts].inject({}) do |result, account|
        result[account[:customer_id]] = Account.new(account)
        result
      end
      graph[:links].each do |link|
        parent_account = accounts[link[:manager_id][:id]]
        child_account = accounts[link[:client_id][:id]]
        child_account.parent = parent_account
        parent_account.add_child(child_account)
      end
      accounts.reject! {|id, account| !account.parent.nil?}
    end
    return accounts
  end

  def add_child(child)
    @child_accounts << child
  end
end
