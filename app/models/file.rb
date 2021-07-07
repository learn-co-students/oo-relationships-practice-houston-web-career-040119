# create files for your ruby classes in this directory
require_relative 'Listing.rb'
require_relative 'Guest.rb'
require_relative 'Trip.rb'
require 'pry'


l1 =Listing.new("Houston")
l2 =Listing.new("NYC")
l3 =Listing.new("L.A.")
l4 =Listing.new("Quebec")
l5 =Listing.new("Houston")

g1 = Guest.new("Bob")
g2 = Guest.new("Martha")
g3 = Guest.new("Emily")
g4 = Guest.new("Haley")
g5 = Guest.new("Robin")

t1 = Trip.new(g2,l1)
t2 = Trip.new(g3,l2)
t3 = Trip.new(g5,l3)
t4 = Trip.new(g1,l4)
t5 = Trip.new(g4,l3)
t6 = Trip.new(g4,l2)



binding.pry
0
