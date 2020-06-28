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

    def cult_population
        BloodOath.all.count { |blood_oath| blood_oath.cult == self }
    end

    def self.find_by_name(name)
        Cult.all.select { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        result = []
        Cult.all.each { |cult| cult.location == location ? result << cult.name : nil }
        result
    end

    def self.find_by_founding_year(year)
        result = []
        Cult.all.each { |cult| cult.founding_year == year ? result << cult.name : nil }
        result
    end


end