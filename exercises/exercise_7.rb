require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative '../lib/store'
require_relative '../lib/employee'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# first name cannot be blank error
@employee = @store1.employees.create(last_name: "Rod", hourly_rate: 60)
if @employee.errors[:first_name].any?
  puts @employee.errors[:first_name]
end

# last name cannot be blank error
@employee = @store1.employees.create(first_name: "Rod", hourly_rate: 60)
if @employee.errors[:last_name].any?
  puts @employee.errors[:last_name]
end

# employee hourly rate must be between 40 and 200
@employee = @store1.employees.create(first_name: "Rod", last_name: 'SomeLastName', hourly_rate: 10)
if @employee.errors[:hourly_rate].any?
  puts @employee.errors[:hourly_rate]
end

#Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
@employee = Employee.create(first_name: "Rod", last_name: 'SomeLastName', hourly_rate: 70)
if @employee.errors[:store_id].any?
  puts @employee.errors[:store_id]
end

#Stores must always have a name that is a minimum of 3 characters
@store_error1 = Store.create(name: "Su", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
if @store_error1.errors[:name].any?
  puts @store_error1.errors[:name]
end

#Stores have an annual_revenue that is a number (integer) that must be 0 or more
@store_error2 = Store.create(name: "realStore", annual_revenue: -10, mens_apparel: false, womens_apparel: true)
if @store_error2.errors[:annual_revenue].any?
  puts @store_error2.errors[:annual_revenue]
end

# BONUS: Stores must carry at least one of the men's or women's apparel
@store_error3 = Store.create(name: "realStore2", annual_revenue: 1200)
if @store_error3.errors[:at_least_one_apparel].any?
  puts @store_error3.errors[:at_least_one_apparel]
end

#2. Ask the user for a store name (store it in a variable)
#3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
#4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
puts "Please input a store name"
ans = gets.chomp 
@new_store = Store.create(name: ans)
if @new_store.errors.any?
  @new_store.errors.each {|_, message| puts message }
end