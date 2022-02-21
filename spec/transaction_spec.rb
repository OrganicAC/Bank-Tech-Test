require 'transaction'
require 'timecop'

describe Transaction do

  before do
    Timecop.freeze(Time.now)
  end
    
  after do
    Timecop.return
  end
  
  describe 'format' do
    it 'has the correct format' do
    expect(subject.format).to eq '21/02/2022 || 100 || || 100'
    end 
  end
end 
