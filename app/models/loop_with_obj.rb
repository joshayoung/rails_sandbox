class LoopWithObj
  def all_true(values)
    values.all?(true)
  end
end

class Fish
  attr_accessor :name
  attr_accessor :swim

  def initialize(name, swim = true)
    @name = name
    @swim = swim
  end

  def can_swim?
    swim
  end
end

class Swim
  attr_accessor :fish

  def initialize(fish)
    @fish = fish
  end

  def all_can_swim
    # 'all?' returns true if all values result in a true value
    # This runs all of the objects' 'can_swim?' method
    fish.all?(&:can_swim?)
  end
end
