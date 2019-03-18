class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :update, :edit, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def destroy
    @student.delete
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def get_student
    @student = Student.find(params[:id])
  end

end
