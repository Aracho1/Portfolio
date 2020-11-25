class Dice

  def roll(n=1)
    array = []
    if n == 1
      array = rand(1..6)
    else
      n.times{ array << rand(1..6) }
      array.join(",")
    end
  end
end

dice = Dice.new
p dice.roll(3)
