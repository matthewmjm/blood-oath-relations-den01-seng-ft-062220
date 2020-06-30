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
    BloodOath.all.select do |oath|
      oath.cult == self
    end.length
  end

  def self.find_by_name(name)
    Cult.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(city)
    select_cults = Cult.all.select do |cult|
      cult.location == city
    end
    select_cults.map do |select_cult|
      select_cult.name
    end
  end

  def self.find_by_founding_year(year)
    select_cults = Cult.all.select do |cult|
      cult.founding_year == year
    end
    select_cults.map { |selected_cult| selected_cult.name } 
  end


  



end