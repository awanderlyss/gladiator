class Arena
  attr_accessor :name, :gladiators

  # name has a name, is always capitalized
  def initialize(name)
    @name = name.capitalize
    # gladiators starts empty
    @gladiators = []
  end

  # add_gladiator adds a gladiator to the arena, can add multiple gladiators, does not have more than two gladiators at once
  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end
end
