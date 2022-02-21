class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end 

  def deposit(credit)
    @balance += credit
  end 

  def withdraw(debit)
    @balance -= debit
  end
end
