class Listing#HOUSE OR APARTMENT

  @@all = []
  attr_accessor :city
  def initialize(city)

    @city = city
    @@all << self
  end

  def self.all
    @@all

  end



  def trips#returns an array of all trips at a listing

    Trip.all.select do |t|
      t.listing == self
    end

  end

  def guests#returns an array of all guests who hace stayed at a listing

      trips.map do |t| #trips returns array, map over the array

        t.guest  #each element of the array is operated by .guest and compared to self  (the .guest comes from the Trips class )
      end

  end

def trip_count


  trips.length
end

def self.find_all_by_city(city)
  self.all.select do |l|
    l.city == city #compare to city input
  end

end

def self.most_popular
  #self.all.max_by do |l|#check  what max_by does
    #l.trip_count


    #Scoot's
  self.all.map { |l| l.trip_count  }.max

  # def trip_count#returns the nimber of trips that have been taken to that listing
  #
  #
  # end
end

end
