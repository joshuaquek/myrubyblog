json.array!(@water_cups) do |water_cup|
  json.extract! water_cup, :id, :name, :age, :condition
  json.url water_cup_url(water_cup, format: :json)
end
