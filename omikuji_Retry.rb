# 第一回復習 omikuji
=begin
num = rand(4)
puts num

if num == 0
	puts omikuji = "大吉"
 elsif num == 1
 	puts omikuji = "中吉"
 else
 	puts  omikuji = "凶"
end

puts "あなたの引いたおみくじは#{omikuji}です"
=end



# 配列
omikuji = ["大吉","中吉","末吉","吉","小吉","凶","大凶"]
puts omikuji[rand(4)]

puts omikuji[rand(omikuji.length)]
#   length, saize  配列の数を取得できるメソッド
puts omikuji.sample
#  .sample  配列からランダムで要素を１つ取得できるメソッド
