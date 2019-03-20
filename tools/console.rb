require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Fernando","Lopez")
c2 = Customer.new("Geraldine","Lopez")
c3 = Customer.new("Janelly","Cardona")
c4 = Customer.new("Janelly","Valencia")
re1 = Restaurant.new("Lagos")
re2 = Restaurant.new("5 guys")
re3 = Restaurant.new("5 guys")
r1 = Review.new(c1,re2,"decent",5)
c2.add_review(re3,"not bad",2) #> instance of Review
Review.all #> at this point should have two instances 
c1.add_review(re3, "really good", 5)
c2.num_reviews #> should return 2 
binding.pry
0 #leave this here to ensure binding.pry isn't the last line