require 'pry'
require_relative 'client'
require_relative 'animal'

#Initize clients
client = Client.new('name','age','gender','kids')
#Add in the pets (one at a time)
name = "Fido"
client.pets[name] = Animal.new('name','breed',age,'gender','toys')

binding.pry