class Guest

@@all = []

 attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end




  def trips
    Trip.all.select do |t|
      t.guest == self
      end
    end

    def listings
      trips.map do |t|
        t.listing
      end

    end


def trip_count
trips.length

end

def self.find_all_by_name(name)
  self.all.select do |g|
    g.name == name
  end
end

def self.pro_traveller
  self.all.select do |g|
    g.trip_count > 1

  end

end


end
