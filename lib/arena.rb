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

  def fight
    @gladiators.any? do |_|
      if @gladiators.length == 2
        if @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
          @gladiators.delete(gladiators[0])
        end

      end
    end
  end
end
