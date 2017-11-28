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

  def buy_cat(dog_name)
    pets[:dog] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood == "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood == "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood == "happy"}
  end

  def sell_pets
    pets.each_value {|pet| pet.mood == "nervous"}
    pets.values.clear
  end

  def list_pets
    pets_number = []
    pets.each do {|type, pet|}
      pets_number << [type, "#{pet.size}"]

  end

end
