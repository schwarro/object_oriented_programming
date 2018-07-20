class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def experience
    @experience
  end

  def exerpeience=(experience)
    @experience = experience
  end

  def earnings
    @earnings
  end

  def quota
    @quota
  end

  def quota=(quota)
    @quota = quota
  end

  def delivery(delivery_start, delivery_end)
    delivered = ((delivery_end - delivery_start).abs) + 1
    over_quota = delivered - @quota
    @experience += delivered
    if delivered >=@quota
      @earnings += (over_quota * 0.5) + (@quota * 0.25)
      @quota += (0.5 * delivered.to_f)
    elsif delivered < quota
      @earnings += ((delivered * 0.25) - 2)
      @quota += (0.5 * delivered.to_f)
    end
  end
  def report
    puts "I'm #{@name.capitalize}, I've delivered #{@experience} papers and I've earned $#{@earnings}."
  end
end

John = Paperboy.new("John")
John.delivery(1, 100)
John.report
John.delivery(1, 50)
John.report
