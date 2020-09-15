require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative '../lib/store'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(name: "Gastown")
@store3.destroy

puts Store.count