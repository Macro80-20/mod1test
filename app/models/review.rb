# .all √
# customer √ 
# Restaurant √
# rating √
# content √

class Review
  @@all = []
  attr_writer :review 
  attr_reader :customer, :restaurant, :content, :rating  
def initialize(customer,restaurant,content,rating)
@customer = customer 
@restaurant = restaurant
@content = content 
@rating = rating 
self.class.all << self 
end

def self.all
    @@all 
end 


end

