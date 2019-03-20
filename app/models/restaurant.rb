
# Restaurant.all √
# returns an array of all restaurants
# Restaurant.find_by_name(name) √
# given a string of restaurant name, returns the first restaurant that matches

class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self 
  end
  
  def self.all 
    @@all
  end

  def self.find_by_name(name)
    all.detect {|restaurant| restaurant.name == name }
end

def customers
Review.all.select { |id| id.restaurant == self}.map{|id| id.customer.full_name}
end

def reviews
  Review.all.select { |id| id.restaurant == self}.map{|id| id.content}
end

end
