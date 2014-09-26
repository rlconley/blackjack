drink = {
  "Kheang" => "beer",
  "Danielle" => "beer",
  "Vance" => "wine",
  "DeeDee" => "lemonade"}

food = {
  "Kheang" => "chips",
  "Danielle" => "salad",
  "Vance" => "chips",
  "DeeDee" => "pudding"}

def find_who_is_bringing_what(signups, what)
  bringing = []
  signups.each do |dude, dish|
    if dish == what
      bringing << dude
    end
  end
  puts bringing
end

find_who_is_bringing_what(food, "pudding")
