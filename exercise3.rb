class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def gold_coins
    @gold_coins
  end

  def gold_coins=(gold_coins)
    @gold_coins = gold_coins
  end

  def health_points
    @health_points
  end

  def health_points=(health_points)
    @health_points = health_points
  end

  def lives
    @lives
  end

  def lives=(lives)
    @lives = lives
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
  @gold_coins += 1
  if (@gold_coins % 10) == 0
    level_up
  end
end

def do_battle(damage)
  @health_points -= damage
  if @health_points < 1
    @lives -= 1
    if @lives <= 0
      restart
    end
    @health_points = 10
  end
end

def restart
  @lives = 5
  @gold_coins = 0
  @health_points = 0
end

end

player1 = Player.new
puts "Player 1 has #{player1.lives} lives."
player1.level_up
puts "Player 1 leveled up. Player 1 now has #{player1.lives} lives."
10.times do
  player1.collect_treasure
end
puts "Player 1 has collected #{player1.gold_coins} gold coins. Player 1 leveled up. Player 1 now has #{player1.lives} lives."

player1.do_battle(25)
puts "Player 1 has taken damage. Health is now #{player1.health_points}. Player 1 has #{player1.lives} lives."

1.times do
  player1.do_battle(1)
end

puts "Player 1 has #{player1.lives} lives, #{player1.gold_coins} gold coins and #{player1.health_points} health points."
