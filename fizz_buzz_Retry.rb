=begin
 FizzBuzz問題
 3で割り切れる数：Fizz
  5で割り切れる数：Buzz
15で割り切れる数：FizzBuzzn
それ以外：そのまま数字を出力｀｀｀
=end

def fizz_buzz(n)
 if n % 15 == 0
   puts "FizzBuzz"
 elsif n % 3 == 0
   puts "Fizz"
 elsif n % 5 == 0
   puts "Buzz"
 else
   puts n
 end
end

#出力方法１
fizz_buzz(1)
fizz_buzz(2)
fizz_buzz(3)


# 出力方法２
20.times do |n|
  fizz_buzz(n)
end

# 出力方法３
=begin
 範囲オブジェクト
｀｀｀(0..30)  => 0~30までの数字
=end
(0..30).each do |n|
 fizzbuzz(n)
end

# 出力方法４
for i in (1..20) do
  fizz_buzz(i)
end
