require_relative '../setup'
require_relative './exercise_1'
require_relative '../lib/store'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(name: "Burnaby")
@store2 = Store.find_by(name: "Richmond")

@store1.update(annual_revenue: 500000)
