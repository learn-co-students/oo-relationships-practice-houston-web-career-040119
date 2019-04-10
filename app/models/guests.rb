

class Guest
    
    @@all=[]
    
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def trips
        Trips.all.select do |trip|
            trip.guest == self
        end
    end
    
    def listings
        trips.map do |trip|
            trip.listing 
        end.uniq
    end
    
    def self.all
        @@all
    end
    
    def trip_count
        trips.length
    end
    
    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end
    
    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
    
end