def direction_game
  direction = {1 =>"上",2 =>"下", 3 =>"左",4 =>"右"}
  i = 0
  com_i = 0
  puts "選択して下さい"
  puts "1:上、2:下、3:左、4:右"

  i = gets.to_i
  my_direction = direction[i]

  com_i = rand(1..4)
  com_direction = direction[com_i]

  if i == com_i
    puts "大当たり！！"
    puts "あなたの勝ちです！！"
    game1
  else
    puts "残念でした〜！"
    puts "#{com_direction}でした〜"
    game1
  end
end

def direction_game2
  direction = {1 =>"上",2 =>"下", 3 =>"左",4 =>"右"}
  i = 0
  com_i = 0
  puts "選択して下さい"
  puts "1:上、2:下、3:左、4:右"

  i = gets.to_i
  my_direction = direction[i]

  com_i = rand(1..4)
  com_direction = direction[com_i]

  if i == com_i
    puts "あなたの負けです"
    puts "相手も同じ方向に指を差しました。"
    game1
  else
    puts "あなたの勝ちです"
    puts "相手は#{com_direction}に指を差しました"
    game1
  end
end

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
    puts "次はあっちむいてホイｯ！！"
    puts "相手が向くのはどっち？"
  direction_game
  
  elsif result == -2 || result == 1
    puts "あなたの負けです"
    puts "次はあっちむいてホイッ！！"
    puts "あなたはどっちを向く？"
  direction_game2
  
  elsif result == 0
    puts "あいこです。もう一度。"
  game1
  end
end
game1


