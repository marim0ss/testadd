=begin
自分で作ってみたコード。
 勇者、スライムそれぞれのクラスで攻撃するとき、
 相手のHP - 自分の攻撃力、となるように相手のHPをクラス内で表示させたかったが、
 Heroクラスで slime.hpと書くとエラーになってしまった。

なので実行部分のhero_attackの引数(slime.hp)と書いて、heroクラスではnumを用いてみた。

▶️解決法
heroクラスとスライムクラスを別々のファイルに書く
３つ目のファイル(実行部分を書く)を作って、
require '勇者クラスのファイル'
require 'スライムクラスのファイル'

とすれば、このファイル内ではhero.hpもslime.hpも扱える。

また引数をslime,hero(.newした変数名)とすればHeroクラス内のメソッド定義部分でもslime.hpが扱える模様。
=end


#勇者のクラス定義
class Hero
 attr_accessor :hp, :attack, :special_attack

 def initialize
  self.hp = 5
  self.attack = 3
  self.special_attack = 6
 end

#勇者の攻撃力：通常orクリティカル
 def judge_hero_attack
   num = rand(5)
   if num == 0
     self.attack = self.special_attack
   end

  puts "勇者の攻撃力：#{self.attack}"
 end


 #勇者による攻撃行動
  def hero_attack(num)
   num -= self.attack

   if self.attack == 6
    puts "会心の一撃！"
   end

   if num > 0      #↓<<TEXTを<<~TEXTにしたらエラー解消した。。。
       puts <<~TEXT

 勇者 の攻撃。
 敵の　スライムは　#{self.attack}の ダメージを うけた。
 TEXT
    else
     puts <<~TEXT
 敵の　スライムは　#{self.attack}の ダメージを うけた。

 敵は　倒れた！
   ---------------------
    経験値５を獲得した！
    ３Ｇを獲得した！
   ---------------------
 TEXT
   end
  end

end


#-----------------------------------------------------------
#スライムのクラス定義
class Slime
 attr_accessor :hp, :attack

 def initialize
  self.hp = 5
  self.attack = 1
 end

 def judge_slime_attack
   num = rand(5)
   if num == 0
     self.attack = 6
   end

  puts "スライムの攻撃力：#{self.attack}"
 end

#スライムの攻撃行動 勇者HP - スライム攻撃力
 def slime_attack(num)
  num -= self.attack

  if num > 0
      puts <<~TEXT
スライム　の攻撃！
勇者は　#{self.attack}の ダメージを うけた。
勇者のHP：#{num}
TEXT
   else
    puts <<~TEXT

スライム の攻撃！
勇者は　#{self.attack}の ダメージを うけた。

勇者は　倒れた…
---------------
   GAME OVER
---------------
TEXT
  end
 end


end

#-----------------------------------------------------------
#実行部分
slime = Slime.new
puts slime.hp

hero = Hero.new
puts hero.attack

hero.judge_hero_attack
slime.judge_slime_attack

slime.slime_attack(hero.hp)
 #↑引数をhero.attackと書くとメソッドと認識されてエラーがでる場合がある。
  #hero_attackと書けば良い。意味は同じ。

hero.hero_attack(slime.hp)
