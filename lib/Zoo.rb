class Zoo

  @@all = []

  attr_accessor :name, :location, :animals

  def initialize(name,location,animals)
    @name = name
    @location = location
    @animals = animals
    @@all << self
  end

  def self.all
    @@all
  end

  def animal_species
    Animal.all.map do |animal|
        animal.species       
    end
  end

  def animal_nicknames
    # filter to get only animals from current zoo
      animals_in_zoo = Animal.all.select do |animal|
      animal.zoo == self
    end
    # transform the array of animals into array of nicknames
     animals_in_zoo.map do |animal|
       animal.nickname
     end
 end

  end

  def zoo_animals
    Zoo.all.map do |zoo|
     zoo.animals
   end
    animals
 end

 def find_by_species(species)
   Zoo.all.select do |zoo|        #.self can only be called inside
    zoo.animals == species          #the class method not a instance method
  end
    Animal.all.map do |animal|
      animal.species
    end
    animals
end


  def self.find_by_location(location)
    self.all.select do |zoo|
      zoo.location == location
    end
  end
