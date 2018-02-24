#スライムクラス
class Slime

 attr_accessor :hp, :attack, :special_attack

 def initialize
  self.hp = 15
  self.attack = 4
  self.special_attack = 7
 end

 #
 # def slime_attack(hero)
 #   hero.hp -= self.attack
 #
 # end

 def yuusya_attack(hero_attack)  #引き数の部分はhero.attackと同義。勇者の攻撃力を用いている
  self.hp -= hero_attack
 end

end
