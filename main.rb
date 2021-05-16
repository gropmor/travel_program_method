require "./methods.rb"

# プランデータ
plans = [
  { place: "沖縄旅行", price: 10000 },
  { place: "北海道旅行", price: 20000 },
  { place: "九州旅行", price: 15000 },
]

display_plans(plans)
chosen_plan = choose_plan(plans)
people_number = decide_people_number(chosen_plan)
calculate_charges(chosen_plan, people_number)
