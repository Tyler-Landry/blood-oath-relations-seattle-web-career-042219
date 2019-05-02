require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("cult1", "phoenix", 2019, "sucks to suck")
cult2 = Cult.new("cult2", "seattle", 2019, "lol")
cult3 = Cult.new("cult3", "portland", 2019, "gtfo")

follower1 = Follower.new("follower1", 19, "yolo")
follower2 = Follower.new("follower2", 20, "whyyyyy")
follower3 = Follower.new("follower3", 21, "whattttt")

blood_oath1 = BloodOath.new(cult1, follower1, "2019-05-01")
blood_oath2 = BloodOath.new(cult2, follower3, "2019-05-02")
blood_oath3 = BloodOath.new(cult2, follower2, "2019-05-03")
blood_oath3 = BloodOath.new(cult3, follower2, "2019-05-03")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
