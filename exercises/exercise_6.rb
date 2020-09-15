require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative '../lib/store'
require_relative '../lib/employee'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Dave", last_name: "Rose", hourly_rate: 160)

@store_yaltown = Store.find_by(name: "Yaletown")
@store_yaltown.employees.create(first_name: "Richard", last_name: "Mann", hourly_rate: 260)