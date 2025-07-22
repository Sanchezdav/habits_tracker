class CompletionsController < ApplicationController
  def create
    @habit = Habit.find(params[:habit_id])
    completion = @habit.completions.new(completed_at: Time.current)

    if completion.save
      redirect_to @habit, notice: "Habit completed successfully."
    else
      redirect_to @habit, alert: "Failed to complete habit."
    end
  end
end
