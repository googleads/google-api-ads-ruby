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
    if graph and graph[:entries]
      accounts = graph[:entries].inject({}) do |result, account|
        result[account[:customer_id]] = Account.new(account)
        result
      end
      if graph[:links]
        graph[:links].each do |link|
          parent_account = accounts[link[:manager_customer_id]]
          child_account = accounts[link[:client_customer_id]]
          child_account.parent = parent_account
          parent_account.add_child(child_account) if parent_account
        end
      end
      accounts.reject! {|id, account| !account.parent.nil?}
    end
    return accounts
  end

  def add_child(child)
    @child_accounts << child
  end
end
