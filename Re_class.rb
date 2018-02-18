# class :設計図
# field :情報
# method :classの中に書かれた処理
#インスタンス ：class(設計図)を元に生み出されたもの

#計算機のプログラムを作ろう！(足し合わせる処理を実装)
class Calculator
 attr_accessor :sum, :array #Calculatorクラスのインスタンスにsumという情報を持たせる

#(newした時にこの中の処理が必ず行われるので、ここに初期値を記述する、sum初期値０を設定)
 def initialize
  self.sum = 0     #クラスに指定したsumですよ、という意味でselfをつける
  self.array = []    #配列arrayの初期値は空。

 end

#↓この定義を実行すると戻り値３０が返ってくる(timesの処理は繰り返した回数が戻り値となるため)
#    このあと配列arrayをputsすれば０〜２９が出てくる(ただしmakearray実行してから30要素がarrayに入ったので、
#     calc.makearray,の後にputs calc.arrayすると出る

=begin
 def makearray
  30.times do |n|
   self.array[n] = n
  end
 end
=end



#要素数が50の「配列を作るメソッド」を定義
 def makearray(num)   #メソッドに引数を設定して下のメソッド実行時に数字を渡せば好きな数で出力できる
  num.times do |n|      #実行時のmakearray(50)←実際の数字、定義のmakearry(num)←numが引数の受皿になる
   self.array[n] = n
  end
 end


#配列の中身を足し合わせるメソッドを作ろう
=begin
こんな感じで
 def inject_sum
  self.array.each do |n|
  self.sum += n
 end
 これでcalc.inject_sumを実行するとself.sumに足した合計が入るので、その後puts clac.sumすれば合計値が表示される
 (calc.sumのsumは２行目attrで定義したsumを引っ張ってきている。makearry inject_sumを実行した結果arrayに中身ができて、それがsumに代入されたことにより、calc.sum をputsすると合計値が入った、ということ)
=end


#↑のコードはinjectmメソッドを使って以下のように書き換えることもできる
 def inject_sum
   self.sum = self.array.inject(:+)
   #self.sumに代入せずともself.array.inject(:+)だけでも可
 end



end


calc = Calculator.new   #クラスを実体化

puts calc.sum       #sumの呼び出し。ここでは初期値０が返ってくる

puts calc.makearray(30)    #numとしておいたところの。ここで具体的な数字を設定
#calc.makearray(30),の後にputs calc.arrayすると０〜２９まで配列の中身が表示される

puts calc.array.length     #配列arrayの要素数を表示・取得できる

puts calc.inject_sum    #calc.inject_sum実行後puts calc.sumでsum呼び出しでも可
