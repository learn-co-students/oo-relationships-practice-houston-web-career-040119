

class Listing
    
    attr_accessor :city
    @@all=[]
    
    def initialize(city)
        @city=city
        @@all.push(self)
    end
    
    def self.all
        @@all
    end
    
    def guests
        trips.map do |trip|
            trip.guest
        end.uniq 
    end
    
    def trips
        Trips.all.select do |trip|
            trip.listing == self
        end
    end
    
    def trip_count
        trips.length
    end
    
    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end
    
    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count
        end
    end
    
end