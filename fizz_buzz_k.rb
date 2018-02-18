

def fizzbuzz(n)

if n % 15 == 0
 puts "FizzBuzz"
elsif n % 3 == 0
 puts "Fizz"

elsif n % 5 == 0
 	puts "Buzz"

 else
 puts n.to_s
 end
end


(0..30).each do |n|
 fizzbuzz(n)
end

