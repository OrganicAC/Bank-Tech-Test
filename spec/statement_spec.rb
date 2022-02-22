require 'statement'

describe Statement do
  describe '.header' do
    it 'displays the header of the statement' do
      expect(subject.header).to eq 'Date || Credit || Debit || Balance'
    end
  end

#   describe 'print_statement' do
#     it 'prints the full statement' do
#     end 
end 
