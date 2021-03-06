class BankAccount

attr_reader :name, :balance, :status
attr_accessor :balance, :status

def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
end


def deposit(cash_amount)
  @balance += cash_amount
end

def display_balance
  "Your balance is $#{@balance}."
end

def valid?
  if @status == "open" and @balance > 0
    true
  else
    false
  end
end

def close_account
  @status = "closed"

end


end
