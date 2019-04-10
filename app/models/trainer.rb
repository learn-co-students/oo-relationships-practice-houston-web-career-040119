class Trainer 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    def self.most_clients
        self.all.max_by { |trainer| trainer.client_count }
    end

    def client_count 
        self.clients.length 
    end

    def clients
        Client.all.select { |client| client.trainer == self } 
    end

    def locations 
        clients.map { |client| client.location }.uniq
    end
end
