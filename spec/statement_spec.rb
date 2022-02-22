require 'statement'

describe Statement do
  
  describe '.header' do
    it 'displays the header of the statement' do
      expect(subject.header).to eq 'Date || Credit || Debit || Balance'
    end
  end

  it 'should print the transaction array' do
    
    transaction_test = instance_double(Transaction)
    allow(transaction_test).to receive(:format).and_return("#{test_time_format} || 2000 ||  || 2000")

    transaction = "Date || Credit || Debit || Balance\n#{test_time_format} || 2000 ||  || 2000\n"
    bank_statement = [transaction_test]
    expect { subject.print_statement(bank_statement) }
      .to output(transaction).to_stdout
  end
end

def test_time_format
  Time.now.strftime('%d/%m/%Y')
end
