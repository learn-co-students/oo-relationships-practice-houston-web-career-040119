
require 'bundler/setup'
Bundler.require

require_all 'app'
require 'pry'


g1 = Guest.new("kevin")
l1 = Listing.new("Houston")
t1 = Trip.new(g1, l1)
t1.guest

g2 = Guest.new("pp")


l2 = Listing.new("New York")
t2 = Trip.new(g2, l2)

t3 = Trip.new(g1, l2)

l3 = Listing.new("SugarLand")
l4 = Listing.new("SugarLand")

g3 = Guest.new('pp')

binding.pry
0
      
