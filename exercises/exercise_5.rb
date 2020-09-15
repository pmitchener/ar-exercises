require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative '../lib/store'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue for company: #{Store.sum(:annual_revenue)}"
puts "Average annual revenue for all stores: #{Store.average(:annual_revenue)}"
@milion_count = Store.where("annual_revenue >= :id1", {id1: 1000000}).count()
puts "Number of stores with $1M or more in revenue #{@milion_count}"