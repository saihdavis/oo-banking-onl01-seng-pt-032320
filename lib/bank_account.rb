class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
end

  def deposit(amount)
    @balance += amount
    #@balance
  end
  
  def display_balance
    "Your balance is $#{self.balance}."
    
  end
  
  def valid?
    if self.status == "open" && self.balance > 0 
      true 
    else
      false 
  end
  end
  
  def close_account 
    self.status = "closed"
    self.status
  end
end