require 'transaction'

describe Transaction do
  describe '.format' do
    it 'has the correct date' do
      expect(subject.format).to eq "#{test_time_format} ||  ||  || "
    end 
    it 'has the correct credit' do
      subject = described_class.new(credit: 1000)
      expect(subject.format).to eq "#{test_time_format} || 1000 ||  || "
    end
    it 'has the correct debit' do
      subject = described_class.new(debit: 1000)
      expect(subject.format).to eq "#{test_time_format} ||  || 1000 || "
    end
    it 'has the correct balance' do
      subject = described_class.new(balance: 1000)
      expect(subject.format).to eq "#{test_time_format} ||  ||  || 1000"
    end
    it 'has the correct complete format' do
      subject = described_class.new(credit: 1000, balance: 1000)
      expect(subject.format).to eq "#{test_time_format} || 1000 ||  || 1000"
    end
  end
end


def test_time_format
  Time.now.strftime('%d/%m/%Y')
end 