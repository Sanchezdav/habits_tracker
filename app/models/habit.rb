class Habit < ApplicationRecord
  validates :title, presence: true

  enum :frequency, { daily: "daily", weekly: "weekly", monthly: "monthly", annually: "annually" }, default: :daily
end
