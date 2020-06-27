class Follower
    attr_reader :name, :age, :motto

    @@all = []

    def initialize name, age, motto
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end


    def self.all
        @@all
    end
 
end 
