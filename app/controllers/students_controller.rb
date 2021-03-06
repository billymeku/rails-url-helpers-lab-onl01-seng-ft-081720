class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
     @student = Student.find(params[:id])
  end

  def activate
  @student = Student.find(params[:id])
  Student.update(@student.id,:active => !@student.active)
  redirect_to show
  end 
  private

    def set_student
      @student = Student.find(params[:id])
    end
end