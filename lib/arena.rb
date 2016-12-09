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
      if @gladiators.length == 2
        if @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
          @gladiators.delete(gladiators.first)
        end
        if @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
          @gladiators.delete(gladiators.first)
        end
        if @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
          @gladiators.delete(gladiators.first)
        end
      end
  end
end
