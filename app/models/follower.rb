class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        BloodOath.all.select { |blood_oath| blood_oath.follower == self }
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

end 
