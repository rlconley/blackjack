class Value
  value = Value.new
  if ["J","Q","K"].incude?(@rank)
    10
  elsif [1..10].include?(@rank)
    @rank_to.i
  elsif @rank == "A"
    1
  end
end
