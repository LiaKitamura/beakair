class CoursesController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = current_user.courses.build
  end

  def create
    @course = current_user.courses.build(course_params)
  end

  private

  def course_params
    params.require(:course).permit(:name)
  end
end
