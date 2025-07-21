json.array! @habits do |habit|
  json.id habit.id
  json.title habit.title
  json.frequency habit.frequency
  json.description habit.description&.to_plain_text
end
