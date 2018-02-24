class Slime
 attr_accessor :hp, :attack

 def initialize
 	self.hp = 5
 	self.attack = 3

 end



end



class Hero
 attr_accessor :hp, :attack, :special_attack

 def initialize
 	self.hp = 10
 	self.attack = 3
 	self.special_attack = 6
 end


 def slime_at(slime_attack)   #引数slime.attackと書くとメソッドと認識されてエラーがでるのでslime_attackと書く。意味は同じ。
 	self.hp -= slime_attack

 	if self.hp > 0
      puts <<TEXT
スライム の攻撃。　
勇者は　#{slime_attack}の ダメージを うけた。
現在のHP：#{self.hp}
TEXT
	 else
	  puts <<TEXT
スライム の攻撃。　
勇者は　#{slime_attack}の ダメージを うけた。

勇者は　倒れた…
---------------
   GAME OVER
---------------
TEXT
 	end
  end


=begin
#rand,sampleを使って、時々spアタックにする
 def hero_at(hero_attack)
  hero_attack = rand(5)
  if hero_attack == 4
   hero_attack = self.special_attack
   else
    hero_attack = self.attack
  end

   slime.hp -= hero_attack
   puts slime.hp
   puts hero_attack
 end

end
=end
