class Knight
  attr_reader :name
  attr_accessor :rank
  def initialize(name, rank = "Master", weapon = "sword")
    @name = name
    @rank = rank
    @weapon = weapon
  end

  def sword?
    @weapon == "sword"
  end

  def battleaxe
    @weapon = "battleaxe"
  end
end
