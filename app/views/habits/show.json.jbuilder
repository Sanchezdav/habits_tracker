json.extract! @habit, :id, :title, :description, :frequency
json.description @habit.description&.to_plain_text
