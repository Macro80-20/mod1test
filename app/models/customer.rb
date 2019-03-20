
# Customer.all√
# should return all of the customer instances

# Customer.find_by_name(name) √
# given a string of a full name, returns the first customer whose full name matches

# Customer.find_all_by_first_name(name) √
# given a string of a first name, returns an array containing all customers with that first name

# Customer.all_names √
# should return an array of all of the customer full names

class Customer
  attr_accessor :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

def self.find_by_name(name)
  all.detect {|customer| customer.full_name == name } #detect is used to find the 1ST instance of this custoomer 
end

def self.find_all_by_first_name(first_name)
all.select {|customer| customer.first_name == first_name}
end

def add_review(restaurant,content,rating)
  Review.new(self,restaurant,content,rating)
end

def num_reviews
  Review.all.select {|id| id.customer.full_name == self.full_name}.count
end

def restaurants 
  Review.all.select {|id| id.customer.full_name == self.full_name }.map{ |id| id.restaurant.name}
  #if they happen to have review the same restaurant twice then ill 
  # Review.all.select {|id| id.customer.full_name == self.full_name }.map{ |id| id.restaurant.name}.uniq
end

end

# def initialize(customer,restauraunt,content,rating)

# Association and aggregate methods 

# Customer#add_review(restaurant, content, rating) √
# given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# Customer#num_reviews √
# Returns the total number of reviews that a customer has authored
# Customer#restaurants √
# Returns a unique array of all restaurants a customer has reviewed