class Cult
    attr_reader :name, :city, :founding_year, :slogan

    @@all = []

    def initialize name, city, founding_year, slogan
        @name = name
        @city = city
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def location
        @city
    end

    def founding_year
        @founding_year.to_i
    end

    def recruit_follower(follower, initiation_date)
        BloodOath.new(self, follower, initiation_date)
    end

    def cult_population
        BloodOath.all.select do |each_cult|
            each_cult.cult == self
        end.length
    end

    def self.find_by_name(cult_name)
        Cult.all.find do |each_cult|
            each_cult.name == cult_name
        end 
    end

    def self.find_by_location(location)
        Cult.all.select do |each_cult|
            each_cult.city == location
        end
    end


    def self.all
        @@all
    end
 
end 

# `Cult.find_by_location`
# * takes a `String` argument that is a location and returns an `Array` of cults that are in that location
