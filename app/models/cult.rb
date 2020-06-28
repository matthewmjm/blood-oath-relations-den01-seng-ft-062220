class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    # Returns all BloodOath instances of a cult instance (helper)
    def cult_roster
        BloodOath.all.select { |blood_oath| blood_oath.cult == self }
    end

    def cult_population
        cult_roster.length
    end

    def self.find_by_name(name)
        Cult.all.select  { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        Cult.all.select  { |cult| cult.location == location }
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select  { |cult| cult.founding_year == founding_year }
    end     

end 