module HabitsHelper
  def frequency_badge(habit)
    color_classes =
      case habit.frequency.downcase
      when "daily"
        "bg-yellow-50 text-yellow-800 ring-yellow-600/20"
      when "weekly"
        "bg-green-50 text-green-800 ring-green-600/20"
      when "monthly"
        "bg-blue-50 text-blue-800 ring-blue-600/20"
      when "yearly"
        "bg-purple-50 text-purple-800 ring-purple-600/20"
      else
        "bg-gray-50 text-gray-800 ring-gray-600/20"
      end

    content_tag(
      :span,
      habit.frequency.capitalize,
      class: "#{color_classes} inline-flex items-center rounded-md px-2 py-1 text-xs font-medium ring-1 ring-inset mb-3"
    )
  end
end
