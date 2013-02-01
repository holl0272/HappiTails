require 'pry'
require 'rainbow'
require_relative 'client'
require_relative 'animal'

#Initize clients
# client = Client.new('name','age','gender','kids')
#Add in the pets (one at a time)
# name = "Fido"
# client.pets[name] = Animal.new('name','breed',age,'gender','toys')

client_list = {}
animal_list = []

client_name = Client.new("Bob", 30, "m", ["Jack", "Jill"] )
client_name.pets["rover"] = Animal.new("Rover", "Beagle", 7, "m", ["Ball", "Bone"])
client_name.pets["fido"] = Animal.new("Fido", "Beagle", 7, "m", ["Ball", "Bone"])
client_list[client_name.name] = client_name
animal_list[0] = "Dog1"
animal_list[1] = "Dog2"

print "What would you like to do: add a (c)lient, add a client's (p)et, see a (l)ist of animals
available for adoption, (g)ive up own animal for adoption, a(d)opt an animal, see a list of clients in the (s)helter, or (q)uit? "
response = gets.chomp

while response!='q'

  case response
    when 'c'
      print "What is your name? "
      name = gets.chomp

      print "How old are you? "
      age = gets.to_i

      print "(m)ale or (f)emale ? "
      gender = gets.chomp

      print "What are the names of your kids? (separate with commas) "
      kids = gets.chomp.split(",")

      #insert create new client function
      client_name = Client.new(name, age, gender, kids)

      print "What are the names of your pets? (separate with commas) "
      pets_names = gets.chomp.split(",")
      pets_names.each do |i|

        puts "For #{i}"

          print "What is the breed? "
          breed = gets.chomp

          print "How old is the pet? "
          age = gets.to_i

          print "(m)ale or (f)emale ? "
          gender = gets.chomp

          print "What are the pet's favorite toys? (separate with commas) "
          fav_toys = gets.chomp.split(",")

          client_name.pets[i] = Animal.new(i, breed ,age, gender, fav_toys)

      end

      client_list << client_name.name

    when 'p'
      print "What is the pet's name? "
      name = gets.chomp

      print "What is the breed? "
      breed = gets.chomp

      print "How old is the pet? "
      age = gets.to_i

      print "(m)ale or (f)emale ? "
      gender = gets.chomp

      print "What are the pet's favorite toys? (separate with commas) "
      fav_toys = gets.chomp.split(",")

      #insert create new animal function
      animal_name = Animal.new(name, breed ,age, gender, fav_toys)

      #push new animal object to animal_list array
      animal_list << animal_name

      #remove animal object from its client

    when 'l'
      puts "The animals currently in our shelter are: #{animal_list.join(', ')}!"
      gets

    when 'g'

      print "What is your name? "
      client_name.name = gets.chomp

      print "What is your pet's name? "
      pets_name = gets.chomp

      #find animal by pet's name in client's pets hash
      #and delete from this.  then push to animal_list
      #array

      binding.pry

      current_pet = client_list[client_name.name].pets[pets_name]
      animal_list << current_pet
      client_list[client_name.name].pets.delete(pets_name)

    when 'd'
      puts "The animals currently in our shelter are: #{animal_list.join(", ")}!"
      print "Which one would you like to adopt? "
      pet_name = gets.chomp

      animal_list.delete(pet_name)

      #add animal to array of client's pets

    when 's'
      puts "The clients who currently use our shelter are: #{client_list.keys.join(", ")}!"


  end
      print "What would you like to do: add a (c)lient, add a client's (p)et, see a (l)ist of animals
      available for adoption, (g)ive up own animal for adoption, a(d)opt an animal, see a list of clients in the (s)helter, or (q)uit? "
      response = gets.chomp
end
