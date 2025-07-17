class Habit < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }

  enum :frequency, { daily: "daily", weekly: "weekly", monthly: "monthly", annually: "annually" }, default: :daily

  has_rich_text :description
end
