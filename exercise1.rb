array = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

train_111_direction = array[-1][:direction]
train_80b_freq = array[-3][:frequency_in_minutes]
train_610_direction = array[2][:direction]
# how to select different items from same symbol?

north_trains = []
array.each do |trains|
  if trains[:direction] == "north"
    north_trains.push(trains[:train])
  end
end

puts north_trains

puts "--------"
east_trains = []
array.each do |trains|
  if trains[:direction] == "east"
    east_trains.push(trains[:train])
  end
end

puts east_trains
