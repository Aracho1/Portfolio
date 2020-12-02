# Examples of dependency injection

class Greeter
  def greet
    smily = Smiley.new
    "Hello #{smily.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end

## we can arrange the code like this

class Greeter
  def initialize(smiley = Smiley.new)
    @smiley = smiley
  end

  def greet
    "Hello #{@smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end

# You can also inject and double classes themselves

class CarFactory
  def initialize(car_class = Car)
    @car_class = car_class
  end

  def make_a_car
    car = @car_class.new
    car.drive_away
  end
end

class Car
  def drive_away
    #.. whatever..
  end
end
