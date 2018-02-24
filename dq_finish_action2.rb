#実行部分  書き換えて残りHPがマイナス表示されないようにした。

require "./dq_finish_heroclass.rb"
require "./dq_finish_slimeclass.rb"


hero = Hero.new

slime = Slime.new

# attack_message = ["勇者の攻撃！","会心の一撃！"]
# num = rand(5)
# emenum = rand(5)
#
# def
# puts attack_message[0]
# hero.attack = hero.special_attack
#
#
# if num == 0
# end



  while true
  #攻撃：勇者 =＞スライム
  slime.yuusya_attack(hero.attack)   #攻撃されたことによるslimeのhpが変動
  puts <<~TEXT

   勇者 の攻撃！
   敵の　スライムは　#{hero.attack}の ダメージを うけた。
   TEXT

   if slime.hp <= 0
      puts <<~TEXT


      敵は　倒れた！
      ---------------------
      経験値５を獲得した！
      ３Ｇを獲得した！
      ---------------------
      TEXT
    else
    puts <<~TEXT
    敵のHP：#{slime.hp}
    TEXT
    end

   exit if slime.hp <= 0       #条件が合えば処理が終了する
   sleep(1)     #次の処理を１秒　間を置ける





  #スライムの攻撃
  hero.ememy_attack(slime.attack)   #攻撃されたことによるheroのhpが変動

  puts <<~TEXT

   スライム の攻撃！
   勇者は　#{slime.attack}の ダメージを うけた。
   TEXT

   if hero.hp <= 0
      puts <<~TEXT


      勇者は　倒れた…
      ---------------
         GAME OVER
      ---------------
    TEXT
   else
   puts <<~TEXT
    勇者のHP：#{hero.hp}
    TEXT
   end

   exit if hero.hp <= 0
   sleep(1)     #次の処理を１秒　間を置ける
  end
