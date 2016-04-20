# 1. indent your code correctly
# 2. use descriptive varible names, no xs, ys, thing
# 3. Don't use the return keyword
# 4. if x is the last line of code, x is the implicit return. return is not necessary
# 5. don't use return in loops
# 6. don't use ! (bang) Methods
# break is ok - too low level of loop, like while -- so what high level loops should I use


# taylor = Artist.new
# taylor.name = "Taylor"
# taylor.save
#
#
# Artist.find_by_name("Taylor")
#
# if taylor == Artist.find_by_name("Taylor")
#   puts "Good night!!!"
# end


#1. Instantiation and Saving Objects
#2. class variables
#3. Class Methods
#4. Enumeration - looping to find a match
#5. Introduce a module to share this functionality with songs

# where do we put this data?
# how do we refer to this object?

class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.exists?(name)
    @@all.any? {|a| a.name == name}
  end

  def self.find_by_name(name)
    @@all.find {|a| a.name == name}
  end

  def save

    @@all << self
  end

end
