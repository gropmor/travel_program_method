# プラン表示
def display_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}（#{plan[:price]}円）"
  end
end

# プラン番号
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_number = gets.to_i
    break if (1..3).include?(select_plan_number)
    puts "1〜3の番号を入力して下さい。"
  end
  plans[select_plan_number - 1]
end

# 人数決定
def decide_people_number(chosen_plan)
  puts "#{chosen_plan[:place]}ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    people_number = gets.to_i
    break if people_number >= 1
    puts "1以上を入力して下さい。"
  end
  puts "#{people_number}名ですね。"
  people_number
end

# 料金計算
def calculate_charges(chosen_plan, people_number)
  total_price = chosen_plan[:price] * people_number
  discounted_total_price = (total_price * 0.9).floor
  if people_number >= 5
    puts "5名以上ですので10%割引となります。"
    puts "合計料金は#{discounted_total_price}円になります。"
  else
    puts "合計料金は#{total_price}円になります。"
  end
end
