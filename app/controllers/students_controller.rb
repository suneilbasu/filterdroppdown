class StudentsController < ApplicationController
  def index
    if params[:search]
      @students = Student.search(params[:search])
    else
      @students = Student.all
    end
  end

  def new
    @student = Student.new
  end
  def show
    @student = Student.find(params[:id])
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student= Student.find(params[:id])
    if @student.update(student_params)
      redirect_to :action => 'index'
    end
  end
  def student_params
    params.require(:student).permit(:first_name, :surname, :tutor_id)
  end
end
