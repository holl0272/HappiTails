class Client
  attr_accessor :name, :age, :gender, :kids, :pets
  def initialize(name, age, gender, kids)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = {}
  end
  def to_s
    "#{name} is #{age} year old and a #{gender} and has #{pets.count} animals named #{pets.keys}."
  end
end