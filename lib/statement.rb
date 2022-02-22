require_relative 'account'
require_relative 'transaction'

class Statement
  attr_reader :transactions

  def header
    'Date || Credit || Debit || Balance'
  end

  def print_statement(transactions)
    puts header
    transactions.reverse.each do |item|
      puts item.format
    end
  end
end
