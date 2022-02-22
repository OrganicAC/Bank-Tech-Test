require_relative 'account'

class Transaction

  attr_reader :date, :credit, :debit, :balance

  def initialize(credit: nil, debit: nil, balance: nil)
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = balance
    @credit = credit
    @debit = debit
  end 
    
  def format
    "#{@date} || #{@credit} || #{@debit} || #{@balance}"
  end
end
