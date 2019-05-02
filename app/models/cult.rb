class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def recruit_follower(follower, initiation_date)
    BloodOath.new(self, follower, initiation_date)
  end

  def cult_population
    BloodOath.all.select { |blood_oath|
      blood_oath.cult == self
    }.length
  end

  def self.find_by_name(cult)
    self.all.select { |element|
      element.name == cult
    }
  end

  def self.find_by_location(location)
    self.all.select { |element|
      element.location == location
    }
  end

  def self.find_by_founding_year(founding_year)
    self.all.select { |element|
      element.founding_year == founding_year
    }
  end

  def self.all
    @@all
  end

end
