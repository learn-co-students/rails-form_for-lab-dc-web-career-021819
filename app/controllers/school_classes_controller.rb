class SchoolClassesController < ApplicationController
  before_action :get_schoolclass, only: [:show, :edit, :update]
  def index
    @schoolclasses = SchoolClass.all
  end

  def show

  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(get_params)
    redirect_to @schoolclass
  end

  def edit

  end

  def update
    @schoolclass.update(get_params)
    redirect_to @schoolclass
  end

  private
  def get_schoolclass
    @schoolclass = SchoolClass.find(params[:id])
  end

  def get_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
