require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative '../lib/store'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)



#get all the mens only store
puts "--- Mens stores ---"
@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
@mens_stores.each do |store| 
  puts "Store: #{store.name}. Annual Revenue: #{store.annual_revenue}"
end
puts ""
puts "--- Women store generating less than $1M anually ---"
#get all the womens only stores that generates less than $1M in sales
@womens_stores = Store.where("womens_apparel = :id1 AND annual_revenue < :id2", 
{id1: true, id2: 1000000})

@womens_stores.each do |store| 
  puts "Store: #{store.name}. Annual Revenue: #{store.annual_revenue}"
end
