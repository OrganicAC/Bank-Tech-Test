require_relative 'transaction'

class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance

  def initialize(transaction_class: Transaction)
    @balance = DEFAULT_BALANCE
    @transaction_class = transaction_class
    @statement = []
  end 

  def deposit(credit)
    @balance += credit
  end 

  def withdraw(debit)
    raise 'Insufficient funds available' if @balance == 0
    @balance -= debit
  end

  def create_transaction
    transaction = @transaction_class.new(date, credit, debit, balance)
    @statement << transaction
  end
end
