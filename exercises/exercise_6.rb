require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, 
# you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. 
# It points to the `id` (integer) column of their store.

# # Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): 
   #*`@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create 
    #* (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables 
    #* that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). 
    #* Eg: `@store1.employees.create(...)`.

    @store1.employees.create(first_name: "Apple", last_name: "Pen", hourly_rate: 120)
    @store1.employees.create(first_name: "Salad", last_name: "Dressing", hourly_rate: 100)
    @store1.employees.create(first_name: "Deep", last_name: "Fried", hourly_rate: 80)
    @store1.employees.create(first_name: "Steam", last_name: "Bun", hourly_rate: 95)
    @store1.employees.create(first_name: "Octopus", last_name: "Leg", hourly_rate: 77)
    @store1.employees.create(first_name: "Ice", last_name: "Cream", hourly_rate: 88)

    @store2.employees.create(first_name: "Mac", last_name: "Book", hourly_rate: 85)
    @store2.employees.create(first_name: "PC", last_name: "MasterRace", hourly_rate: 200)
    @store2.employees.create(first_name: "Phone", last_name: "Charger", hourly_rate: 65)
    @store2.employees.create(first_name: "Samsung", last_name: "Gear", hourly_rate: 92)
    @store2.employees.create(first_name: "Head", last_name: "Phones", hourly_rate: 56)
    @store2.employees.create(first_name: "Back", last_name: "Pack", hourly_rate: 80)

