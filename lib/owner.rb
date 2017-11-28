class Owner
  # code goes here
  attr_accessor :name, :species, :pets

  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@owners.count
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def species=(species)
    raise NoMethodError if species != "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish_name)
    if pets[:fishes].empty?
      pets[:fishes] = Fish.new(fish_name)
    else
      pets[:fishes] << Fish.new(fish_name)
    end
  end

  def buy_cat(cat_name)
    if
      pets[:cats].empty? pets[:cats] = Cat.new(cat_name)
    else
      pets[:cats] << Cat.new(cat_name)
    end
  end

  def buy_dog(dog_name)
    if pets[:dogs].empty?
      pets[:dogs] = Dog.new(dog_name)
      else
        pets[:dogs] << Dog.new(dog_name)
      end
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each_value {|pet| pet.mood = "nervous"}
    pets.values.clear
  end

  def list_pets
    pets_number = []
    pets.each do |type, pet|
      pets_number << [type.to_s.downcase, "#{pet.size}"]
    end
    puts "I have #{pets_number[0][1]} #{pets_number[0]}, #{pets_number[1][1]} #{pets_number[1]}, and #{pets_number[2][1]} #{pets_number[2]}."
  end

end
