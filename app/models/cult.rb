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

    def average_age
        result = []
        BloodOath.all.each { |oath| oath.cult == self ? result << oath.follower.age : nil}
        result.reduce(0) { |sum, age| sum + age }/result.length
    end

    def my_followers_mottos
        BloodOath.all.each { |oath| oath.cult == self ? (p oath.follower.life_motto) : nil}
    end

    # def self.least_popular
    #     result = BloodOath.all.map { |oath| oath.cult }
    #     final_result = result.reduce(Hash.new(0)) { |hash, value| hash[value] += 1; hash} 
    #     result.min_by { |value| final_result[value]  }
    # end

    def self.least_popular
        result = BloodOath.all.map { |oath| oath.cult }
        result.min_by {|i| result.count(i)}
    end

    # def self.most_common_location
    #     result = Cult.all.map { |cult| cult.location }
    #     final_result = result.reduce(Hash.new(0)) { |hash, value| hash[value] += 1; hash} 
    #     result.max_by { |value| final_result[value]  }
    # end

    def self.most_common_location
        result = Cult.all.map { |cult| cult.location }
        result.max_by {|i| result.count(i)}
    end



end