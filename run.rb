require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


a1 = Animal.new("Fritz", 74, "Dog")
a2 = Animal.new("Tony", 200, "Tiger")
a3 = Animal.new("Roger", 74, "Dog")

z1 = Zoo.new("National Zoo", "DC")

a1.zoo = z1
a2.zoo = z1

z1.add_animal(a1)
z1.add_animal(a2)
z1.add_animal(a3)


pp Zoo.find_by_location("DC")
pp z1.find_by_species("Dog")
pp z1.animal_nickname
pp z1.animal_species

pp Zoo.all


#binding.pry
puts "done"
