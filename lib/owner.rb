class Owner
  # code goes here
  attr_accessor :name

  @@all = []

  def initialize
    @@all << self
  end

  def all
    @@all
  end

  def reset_all
    @@all.clear
  end


end
