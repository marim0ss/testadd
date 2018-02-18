# 配列と繰り返し処理
array = ["good morning","hello", "Bye"]


array.each do |n|
 puts n
end
# 配列arrayの中身をnに格納しつつputsで表示



array2 = []
#空の配列

30.times do |n|
 array2[n] = n
end

puts array2
# 配列表示 0~29までが入っている


sum = 0
array2.each do |num|
 sum += num
end

puts sum




# またはs処理をsumメソッドの中に入れる場合
def sum
  array = []
  sum = 0

  #配列を作る
  30.times do |n|
    array[n] = n
  end

  #配列を足し合わせる
  array.each do |n|
    sum += n
  end

  #配列の合計を返す
  return sum

end


puts sum
