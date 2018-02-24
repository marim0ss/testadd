#実行部分
#    疑問点：while部分の後に書いた処理が実行されない。エラーは出ていない
#     > whileの中、exit前に入れるとちゃんと表示される

require "./dq_finish_heroclass.rb"
require "./dq_finish_slimeclass.rb"


hero = Hero.new

slime = Slime.new



  while true
  #攻撃：勇者 =＞スライム
  puts <<~TEXT
   勇者 の攻撃！
   敵の　スライムは　#{hero.attack}の ダメージを うけた。
   敵のHP：#{hero.hero_attack(slime)}
   TEXT

   if slime.hp <= 0
      puts <<~TEXT

      敵は　倒れた！
      ---------------------
      経験値５を獲得した！
      ３Ｇを獲得した！
      ---------------------
      TEXT
    end
   exit if slime.hp <= 0       #条件が合えば処理が終了する
   sleep(1)     #次の処理を１秒　間を置ける





  #スライムの攻撃
  puts <<~TEXT
   スライム の攻撃！
   勇者は　#{slime.attack}の ダメージを うけた。
   勇者のHP：#{slime.slime_attack(hero)}
   TEXT

   if hero.hp <= 0
      puts <<~TEXT

      勇者は　倒れた…
      ---------------
         GAME OVER
      ---------------
   TEXT
   end

   exit if hero.hp <= 0
   sleep(1)     #次の処理を１秒　間を置ける
  end
