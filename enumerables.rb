require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  arr = []
  spicy_foods.map do |e|
    arr << e[:name]
  end
  puts arr
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spicy_foods.select { |e| e[:heat_level]>5} 
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  spicy_foods.map{|e|"#{e[:name]} (#{e[:cuisine]}) | Heat Level: #{'🌶'*e[:heat_level]}"}
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.select{|e| e[:cuisine]== cuisine}
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
   spicy_foods.sort_by { |hsh| hsh[:heat_level] }
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  spicy_foods.select{|hsh| hsh[:heat_level]>5}.map{|hsh|"#{hsh[:name]} (#{hsh[:cuisine]}) | Heat Level: #{'🌶'*hsh[:heat_level]}"}
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  spicy_foods.sum{|hsh| hsh[:heat_level]/spicy_foods.length}
end
