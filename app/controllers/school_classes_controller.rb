class SchoolClassesController < ApplicationController
  def new
    @school = School.new
  end

  def create
    school = School.create(school_params)
    redirect_to school_path(school)
  end

  def show

  end

  def edit
  end

  def update
  end

  private

  def school_params
    params.require(:school).permit(:title, :room_number)
  end
end
