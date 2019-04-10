
class Guest

  attr_accessor :name

  @@all = []

  def initialize(name)

    @name = name
    @@all << self
  end

  def listings
    all_trips = Trip.all.select do |trip|
      trip.guest == self
    end

    all_trips.collect do |trip|

      trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    @@all.select do |guest|
      guest.trip_count > 1
    end
  end

 def self.find_all_by_name(name)
   @@all.select do |guest|
     guest.name == name
   end
 end

end
