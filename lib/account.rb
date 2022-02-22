require_relative 'transaction'
require_relative 'statement'

class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance, :statement_class, :statement

  def initialize
    @balance = DEFAULT_BALANCE
    @statement_class = Statement.new
    @statement = []
  end 

  def deposit(credit)
    @balance += credit
    create_transaction(credit, nil, @balance)
  end 

  def withdraw(debit)
    raise 'Insufficient funds available' if (@balance - debit) <= 0
    @balance -= debit
    create_transaction(nil, debit, @balance)
  end

  def print_statement
    @statement_class.print_statement(@statement)
  end

  private 

  def create_transaction(credit, debit, balance)
    transaction = Transaction.new(credit: credit, debit: debit, balance: balance)
    @statement << transaction
  end
end
