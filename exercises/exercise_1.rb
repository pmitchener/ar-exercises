require_relative '../setup'
require_relative '../lib/store'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store1 = Store.new
store1.name = "store1"
store1.annual_revenue = 300000
store1.mens_apparel = true
womens_apparel = false

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count