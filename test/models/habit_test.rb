require "test_helper"

class HabitTest < ActiveSupport::TestCase
  test "should not save habit without title" do
    habit = Habit.new
    assert_not habit.save
    assert_includes habit.errors[:title], "can't be blank"
  end

  test "should not save habit with title shorter than 3 characters" do
    habit = Habit.new(title: "Hi")
    assert_not habit.save
    assert_includes habit.errors[:title], "is too short (minimum is 3 characters)"
  end

  test "should save with frequency daily as default" do
    habit = Habit.new(title: "Run a mile")
    assert habit.save
    assert_equal "daily", habit.frequency
  end

  test "should save habit with valid attributes" do
    habit = Habit.new(title: "Read a book", frequency: "weekly", description: "Read at least one book per month")
    assert habit.save
    assert_equal "weekly", habit.frequency
  end

  test "should validate frequency options" do
    habit = Habit.new(title: "Invalid Frequency")

    %w[daily weekly monthly annually].each do |valid_frequency|
      habit.frequency = valid_frequency
      assert habit.valid?, "#{valid_frequency} should be valid"
    end

    assert_raises(ArgumentError, "'invalid_frequency' is not a valid frequency") do
      habit.frequency = "invalid_frequency"
    end
  end
end
