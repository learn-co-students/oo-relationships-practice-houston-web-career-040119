require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("kevin")

l1 = Listing.new("houston")

Trips.new(l1,g1)


Pry.start
