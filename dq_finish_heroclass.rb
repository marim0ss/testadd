#もっとシンプルに書く：勇者クラス
class Hero

 attr_accessor :hp, :attack, :special_attack

  def initialize
   self.hp = 12
   self.attack = 4
   self.special_attack = 8
  end

  # def hero_attack(slime)
  #   slime.hp -= self.attack
  #
  # end

#上のを書き換えて、勇者クラスではスライムHPは扱わず、スライム攻撃で勇者のHPが減ると書く
 def ememy_attack(slime_attack)    #引き数の部分はslime.attackと同義。スライムの攻撃力を用いている
  self.hp -= slime_attack
 end
#実行部分でhero.ememy_attack(slime.attack)

end
