# assume environment 

t1 = Trainer.new("Jack")
t2 = Trainer.new("Jill")

l1 = Location.new("San Francisco")
l2 = Location.new("San Jose")

c1 = Client.new("Bob",t1,l1)
c2 = Client.new("Kate",t1,l2)
c3 = Client.new("Ashley",t2,l2)
c4 = Client.new("Moseley",t2,l2)
c5 = Client.new("Bill",t1,l2)

