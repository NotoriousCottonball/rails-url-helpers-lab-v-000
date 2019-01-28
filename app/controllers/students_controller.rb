class StudentsController < ApplicationController
  before_action :set_student, only: :show	  before_action :set_student, only: :show
  	
   def index	  def index
    @students = Student.all	    @students = Student.all
  end	  end


   def show	  def show
    @student = Student.find_by_id(params[:id])
  end

   def activate
    @student = Student.find_by_id(params[:id])
    @student.toggle!(:active)
    redirect_to student_path(@student)
  end	  end


   private	  private


     def set_student	    def set_student
      @student = Student.find(params[:id])	      @student = Student.find(params[:id])
    end	    end
end 	end