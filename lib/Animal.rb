class Animal

  attr_accessor :weight, :zoo
  attr_reader :nickname, :species

  @@all = []

  def initialize(nickname, weight, species)
    @nickname = nickname
    @weight = weight
    @species = species
    @zoo = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select{|animal| animal.species==species}
  end


end
