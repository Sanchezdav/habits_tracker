require "test_helper"

class HabitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get habits_url
    assert_response :success
  end

  test "should create habit with default frequency" do
    post habits_url, params: { habit: { title: "New Habit" } }
    assert_response :redirect
    assert_equal "Habit was successfully created.", flash[:notice]
    assert_equal "daily", Habit.last.frequency
  end

  test "should update habit" do
    habit = habits(:daily)
    patch habit_url(habit), params: { habit: { title: "Updated Habit", frequency: "weekly" } }
    assert_response :redirect
    assert_equal "Habit was successfully updated.", flash[:notice]
    habit.reload
    assert_equal "Updated Habit", habit.title
    assert_equal "weekly", habit.frequency
  end

  test "should destroy habit" do
    habit = habits(:daily)
    assert_difference("Habit.count", -1) do
      delete habit_url(habit)
    end
    assert_response :redirect
    assert_equal "Habit was successfully deleted.", flash[:notice]
  end
end
