

class Trips
    
    attr_accessor :listing, :guest
    @@all=[]
    
    def initialize(listing,guest)
        @listing = listing
        @guest = guest
        @@all.push(self)
    end
    
    
    def self.all
        @@all
    end
    
    
end