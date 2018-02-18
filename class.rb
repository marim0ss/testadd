class Calculator
 attr_accessor :sum
 attr_accessor :array
 #attr_accessor :makearray


 def initialize
 	self.sum = 0
 	self.array = []

 end

#makearray = []

def makearray(num)
 num.times do |n|

 	self.array[n] = n

 end
end

 def sum_array

  #self.array.each do |num|      この２行の処理が
  #self.sum += num               injectを使ってスッキリ書ける
  self.sum = self.array.inject(:+)
 end



end
