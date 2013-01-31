class Animal
    attr_accessor :name, :breed, :age, :gender, :toys
    def initialize(name, breed, age, gender, toys)
      @name = name
      @breed = breed
      @age = age
      @gender = gender
      @toys = toys
    end
    def to_s
      "#{name} is a #{breed} who is #{age} year old and a #{gender} and like #{toys.join(", ")}."
    end
end