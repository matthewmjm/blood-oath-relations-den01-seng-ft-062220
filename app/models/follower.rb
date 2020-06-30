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
        BloodOath.all.select do |oath|
            oath.follower == self
        end.map { |selected_oath| selected_oath.cult.name }
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age_limit)
        Follower.all.select do |the_follower|
            the_follower.age >= age_limit
        end.map { |follower| follower.name}
    end

end