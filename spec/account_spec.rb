require 'account'

describe Account do
  describe 'balance' do
    it 'has a starting balance of 0' do
      expect(subject.balance).to eq 0
    end 
  end

  describe 'deposit' do
    it 'allows you to increase the balance by the amount you deposit' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end 
  end

  describe 'withdraw' do
    it 'allows you do decrease the balance by the amount you withdraw' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.balance).to eq 50
    end
  end
end
