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
