class HabitsController < ApplicationController
  before_action :set_habit, only: [ :show, :edit, :update ]

  def index
    @habits = Habit.all
  end

  def show
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)

    if @habit.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Habit was successfully created." }
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @habit.update(habit_params)
      respond_to do |format|
        format.html { redirect_to @habit, notice: "Habit was successfully updated." }
      end
    else
      respond_to do |format|
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def habit_params
    params.require(:habit).permit(:title, :frequency, :description)
  end

  def set_habit
    @habit = Habit.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Habit not found."
  end
end
