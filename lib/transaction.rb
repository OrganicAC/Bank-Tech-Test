class Transaction

  def initialize(Account.new)
    @date = Time.now.strftime("%d/%m/%Y")
  end 
    
  def format
    "#{@date} || || || #{@balance}"
  end 

end