class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto )
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        result = []
        BloodOath.all.each { |oath| oath.follower == self ? result << oath.cult.name : nil }
        result
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        result = []
        Follower.all.each { |follower| follower.age >= age ? result << follower.name : nil }    
        result
    end

end