require 'bundler/setup'
Bundler.require
#require_rel '../app'
require_relative '../app/models/cult.rb'
require_relative '../app/models/blood-oath.rb'
require_relative '../app/models/follower.rb'







cult1 = Cult.new("Fluffy_Kitty_Cult", "Catland", 1999, "meow, meow, meow")
cult2 = Cult.new("Little_Doggy_Cult", "Dogville", 1980, "ruff, ruff, ruff")
cult3 = Cult.new("Flying_Bird_Cult", "Birdland", 2013, "tweet, tweet, tweet")
cult4 = Cult.new("Grazying_Cow_Cult", "Cowfarm", 1989, "moo, moo, moo")
cult5 = Cult.new("Jimminy_Cricket_Cult", "Bugville", 2011, "chirp, chirp, chirp")


follower1 = Follower.new("Edwin Powell", 24, "You need a good mottos to live by")
follower2 = Follower.new("Frieda Robscheit", 29, "Good Enough Isn’t Good Enough")
follower3 = Follower.new("Rosalind Franklin", 35, "Faster, Higher, Stronger")
follower4 = Follower.new("Shirley Jackson", 23, "Always Be A First-Rate Version Of Yourself")
follower5 = Follower.new("Max Planck", 31, "Have Courage And Be Kind")
follower6 = Follower.new("Mildred Dresselhaus", 40, "Successful People Do Things When They Don’t Want To")
follower7 = Follower.new("Richard Feynman", 24, "Breathe In Courage, Breathe Out Fear")
follower8 = Follower.new("Johannes Kepler", 34, "Rome Was Not Built In A Day")
follower9 = Follower.new("Ingrid Daubechies", 42, "Be The One To Light A Fire")
follower10 = Follower.new("Niels Bohr", 33, "Now that's a Fire")


oath1 = BloodOath.new(cult3, follower3, "2016-09-12") 
oath2 = BloodOath.new(cult5, follower8, "2018-06-24")
oath3 = BloodOath.new(cult3, follower4, "2015-04-13")
oath4 = BloodOath.new(cult2, follower7, "2019-10-25")
oath5 = BloodOath.new(cult2, follower1, "2012-07-22")
oath6 = BloodOath.new(cult5, follower10, "2016-09-12") 
oath7 = BloodOath.new(cult1, follower6, "2018-06-24")
oath8 = BloodOath.new(cult4, follower4, "2015-04-13")
oath9 = BloodOath.new(cult4, follower5, "2020-03-16")
oath10 = BloodOath.new(cult3, follower9, "2014-11-09")

binding.pry
end_of_bloodoath = "game over"

