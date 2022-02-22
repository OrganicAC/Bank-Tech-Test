require 'statement'

describe Statement do

  subject(:statement) { described_class.new }
  let(:transaction_test) { double(:transaction, date: 21/02/2022, credit: '2000', debit: '', balance: '2000') }

  describe '.header' do
    it 'displays the header of the statement' do
      expect(subject.header).to eq 'Date || Credit || Debit || Balance'
    end
  end

  it 'should print the transaction array' do
    transaction = '21/02/2022 || 2000 ||  || 2000'
    bank_statement = [transaction_test]
    expect { statement.print_statement(bank_statement) }
      .to output(transaction).to_stdout
  end
end
