require "./class.rb"

calc = Calculator.new

puts calc.sum
puts calc.array.length

calc.makearray(100)
puts calc.array.length

calc.sum_array
puts calc.sum



#array = [1,2,3,4,5,6]
#sum = 0
#
#sum = array.inject(:+)
#puts sum
