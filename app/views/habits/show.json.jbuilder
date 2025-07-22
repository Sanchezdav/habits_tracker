json.extract! @habit, :id, :title, :description, :frequency
json.description @habit.description&.to_plain_text
json.completed @habit.completed?
json.completions_count @habit.completions.count
json.created_at @habit.created_at.iso8601
