class Animal

  @@all = []

  attr_accessor :weight, :zoo
  attr_reader :species, :nickname

  def initialize(species,weight,nickname,zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    self.all.select do |animal|
      animal.species == species
    end
  end

end
