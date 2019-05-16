require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


brooklyn_zoo = Zoo.new("Brooklyn Zoo", "Brooklyn","lion")
bronx_zoo = Zoo.new("Bronx Zoo","Bronx","king_cobra")

lion = Animal.new("cat",400,"pat",brooklyn_zoo)
king_cobra = Animal.new("reptile",13,"snape",bronx_zoo)




binding.pry
puts "done"
