require 'pry'
require 'rainbow'
require_relative 'client'
require_relative 'animal'

#Initize clients
# client = Client.new('name','age','gender','kids')
#Add in the pets (one at a time)
# name = "Fido"
# client.pets[name] = Animal.new('name','breed',age,'gender','toys')

client_list, animal_list = [], []

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

      print "What are the names of your pets? (separate with commas) "
      pets = gets.chomp.split(",")

      #insert create new client function
      client = Client.new(name, age, gender, kids)

      #push new client object to client_list array

    when 'p'
      print "What is the pet's name? "
      name = gets.chomp

      print "How old is the pet? "
      age = gets.to_i

      print "(m)ale or (f)emale ? "
      gender = gets.chomp

      print "What are the pet's favorite toys? (separate with commas) "
      fav_toys = gets.chomp.split(",")

      #insert create new animal function

      #push new animal object to animal_list array

      #remove animal object from its client

    when 'l'
      puts "The animals currently in our shelter are: #{animal_list.split(",")}!"

    when 'g'
      print "What is your name? "
      client_name = gets.chomp

      print "What is your pet's name? "
      pet_name = gets.chomp

      #find animal by pet's name in client's pets hash
      #and delete from this.  then push to animal_list
      #array

    when 'd'
      puts "The animals currently in our shelter are: #{animal_list.split(",")}!"
      print "Which one would you like to adopt? "
      pet_name = gets.chomp

      animal_list.delete(pet_name)

      #add animal to array of client's pets

    when 's'
      puts "The clients who currently use our shelter are: #{client_list.split(",")}!"

    print "What would you like to do: add a (c)lient, add a client's (p)et, see a (l)ist of animals
available for adoption, (g)ive up own animal for adoption, a(d)opt an animal, see a list of clients in the (s)helter, or (q)uit? "
    response = gets.chomp

  end
end
>>>>>>> 425e33bb6b00ae1402840ba510731e1f4aa0035c
