  
 
def games
  puts "何して遊ぶ？"
  puts "1:じゃんけん、2:あっちむいてホイッ!"
  puts "選んで下さい"
  select_num = gets.to_i

if select_num == 1
def game1
   hands = {1 =>"グー",2 =>"チョキ",3 =>"パー"}
   i = 0
   com_i = 0
   puts "ジャンケンスタート！！"
   puts "選択して下さい。"
   puts "1:グー,2:チョキ,3:パー"
   i = gets.to_i
   my_hand = hands[i]
   puts "あなたは#{my_hand}を出しました"
   com_i = rand(1..3).to_i
   com_hand = hands[com_i]
   puts "相手は#{com_hand}を出しました"
   result = i - com_i
  
  if result == -1 || result == 2
    puts "あなたの勝ちです"
    games
  elsif result == -2 || result == 1
    puts "あなたの負けです"
    games
  elsif result == 0
    puts "あいこです。もう一度。"
    game1
  end
end
game1

elsif select_num == 2
def game2
  direction = {1 =>"上",2 =>"下", 3 =>"左",4 =>"右"}
  i = 0
  com_i = 0
  puts "あっちむいてホイッ！！"
  puts "選択して下さい"
  puts "1:上、2:下、3:左、4:右"

  i = gets.to_i
  my_direction = direction[i]

  com_i = rand(1..4)
  com_direction = direction[com_i]

  if i == com_i
    puts "大当たり！！"
    puts "あなたの勝ちです！！"
    games
  else
    puts "残念でした〜！"
    puts "#{com_direction}でした〜"
    games
  end
end
game2
else
  puts "入力ミスです。もう一度入力してください"
  games
  
end
end

games
  


    