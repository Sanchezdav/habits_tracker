json.habits do
  @habits.each do |frequency, habits|
    json.set! frequency do
      json.frequency frequency
      json.habits habits do |habit|
        json.id habit.id
        json.title habit.title
        json.frequency habit.frequency
        json.description habit.description&.to_plain_text
        json.completed habit.completed?
        json.completions_count habit.completions.count
        json.created_at habit.created_at.iso8601
      end
    end
  end
end

json.completions @habits.flat_map do |frequency, habits|
  habits.flat_map do |habit|
    habit.completions.map do |completion|
      json.id completion.id
      json.completed_at completion.completed_at.iso8601
      json.habit_id habit.id
    end
  end
end
