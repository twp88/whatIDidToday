class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.create(lesson_params)
    redirect_to lessons_path
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to lesson_path(params[:id])
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    if @lesson.destroy
      flash[:notice] = 'Lesson deleted'
      redirect_to lessons_path
    else
      flash[:notice] = 'There was a problem with deleting this'
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :lesson, :avatar)
  end
end
