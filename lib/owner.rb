class Owner
  # code goes here
  attr_accessor :name, :species, :pets

  @@all = []

  def initialize
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def species
    raise NoMethodError if self.species != "human"
  end

  def say_species
    puts "I am a human."
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cat] << Cat.new(cat_name)
  end

end
