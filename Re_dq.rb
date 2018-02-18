
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

   if num > 0
       puts <<TEXT

 勇者 の攻撃。
 敵の　スライムは　#{self.attack}の ダメージを うけた。
 TEXT
    else
     puts <<TEXT
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
      puts <<TEXT
スライム　の攻撃！
勇者は　#{self.attack}の ダメージを うけた。
勇者のHP：#{num}
TEXT
   else
    puts <<TEXT

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


hero.hero_attack(slime.hp)
