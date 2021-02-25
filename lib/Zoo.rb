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
    animals.select{|animal| animal.species==species}
end 

    def animal_species
        result = []
        animals.map do |animal|
            result << animal.species
        end
        result.uniq
    end

    def animal_nickname
        animals.map do |animal|
        animal.nickname
        #do we need .all ?
        end
    end

    def self.find_by_location (location)
        @@all.select{|zoo| zoo.location==location}
    end

    def add_animal(animal)
        animals << animal
    end

end