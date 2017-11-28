class Owner
  # code goes here
  attr_accessor :name

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def species

  end

end
