class Zoo
    attr_accessor :name, :location, :animals 
    @@all=[]

def initialize (name, location)
    @name=name
    @location=location
    @animals=[]
    @@all << self
end

def self.all
    @@all
end

def find_by_species(species)
    animals.map{|animal| animal.species==species}
end 

def animal_species
    result = []
    animals.map do |animal| 
       result << animal.species 
    end
    result.uniq
    #do we need.all

def animal_nickname
    animals.map do |animal|
    animal.nickname
    #do we need .all ?
    end 

def self.find_by_location (location)
    @@all.map{|zoo| zoo.location==location}
    end
end