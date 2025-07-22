class Completion < ApplicationRecord
  belongs_to :habit

  scope :for_frequency, ->(frequency) do
    time_range = case frequency
    when "daily" then Time.current.beginning_of_day..Time.current.end_of_day
    when "weekly" then Time.current.beginning_of_week..Time.current.end_of_week
    when "monthly" then Time.current.beginning_of_month..Time.current.end_of_month
    when "annually" then Time.current.beginning_of_year..Time.current.end_of_year
    else raise ArgumentError, "'#{frequency}' is not a valid frequency"
    end

    where(completed_at: time_range)
  end

  scope :completed_today, -> { for_frequency("daily") }
  scope :completed_this_week, -> { for_frequency("weekly") }
  scope :completed_this_month, -> { for_frequency("monthly") }
  scope :completed_this_year, -> { for_frequency("annually") }
end
