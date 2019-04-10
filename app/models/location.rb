class Location
    attr_accessor :city

    @@all = [] 

    def initialize(city)
        @city = city 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def self.least_clients
        self.all.min_by { |location| location.client_count }
    end

    def client_count 
        self.clients.length 
    end

    def clients 
        Client.all.select { |client| client.location == self } 
    end

    def trainers
        clients.map { |client| client.trainer }.uniq 
    end
end
