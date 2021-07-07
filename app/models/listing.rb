class Listing

  attr_accessor :city
  @@all = []

  def initialize(city)
    @city = city

    @@all << self
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.count
  end

  def self.all

    @@all
  end

  def self.find_all_by_city(city)
    Listing.all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    self.all.max_by {|listing| listing.trip_count}
  end


end
