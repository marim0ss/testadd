=begin
num = rand(4)

if num == 0
  omikuji = "大吉"

 elsif  num == 1
  omikuji = "中吉"
 elsif num == 2
  omikuji = "小吉"
 else
 omikuji = "凶"

end


puts "あなたの引いたおみくじは#{omikuji}です"
=end

omikuji = ["大吉","中吉","小吉","凶","末吉"]

puts omikuji[rand(omikuji.length)]

puts omikuji.sample
