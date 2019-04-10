class Client 
    attr_accessor :name, :trainer, :location

    @@all = []

    def initialize(name,trainer,location)
        @name = name 
        @trainer = trainer 
        @location = location 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def assign_trainer(trainer)
        self.trainer = trainer 
    end
end
