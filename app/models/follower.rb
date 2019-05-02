class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def join_cult(cult, initiation_date)
    BloodOath.new(cult, self, initiation_date)
  end

  def cults
    BloodOath.all.select { |blood_oath|
      blood_oath.follower == self
    }.length
  end

  def self.of_a_certain_age(age)
    self.all.select { |element|
      element.age == age
    }
  end


  def self.all
    @@all
  end
end
