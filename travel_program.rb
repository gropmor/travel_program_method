puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

plans = [
  { place: "沖縄旅行", price: 10000 },
  { place: "北海道旅行", price: 10000 },
  { place: "九州旅行", price: 10000 },
]

# プラン選択
while true
  print "プランの番号を選択 > "
  select_plan_number = gets.to_i
  break if (1..3).include?(select_plan_number)
  puts "1〜3の番号を入力して下さい。"
end
chosen_plan = plans[select_plan_number - 1]
puts "#{chosen_plan[:place]}ですね。"

# 人数決定
puts "何名で予約されますか？"
while true
  print "人数を入力 > "
  people_number = gets.to_i
  break if people_number >= 1
  puts "1以上を入力して下さい。"
end
puts "#{people_number}名ですね。"

# 料金計算
total_price = chosen_plan[:price] * people_number
discounted_total_price = (total_price * 0.9).floor
if people_number >= 5
  puts "5名以上ですので10%割引となります。"
  puts "合計料金は#{discounted_total_price}円になります。"
else
  puts "合計料金は#{total_price}円になります。"
end
