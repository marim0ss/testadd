array = []

40.times do |n|
 array[n] = n
end

puts array

sum = 0
array.each do |num|
 sum += num
end


puts sum
