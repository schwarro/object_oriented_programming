class BankAccount

  def balance
    @balance
  end

  def balance=(balance)
    @balance = balance
  end

  def interest_rate
    @interest_rate
  end

  def interest_rate=(interest_rate)
    @interest_rate=interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawl(amount)
    @balance -= amount
  end

  def interest
    @balance *= 1.0 + interest_rate
  end
end

account1 = BankAccount.new
account1.balance = 10000
puts "The current blance is #{account1.balance}"
account1.interest_rate = 0.05
account1.deposit(500)
puts "The new balance is #{account1.balance}"
account1.withdrawl(1000)
puts "The new balance is #{account1.balance}"
account1.interest
puts "The new balance is #{account1.balance}"
