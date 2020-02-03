class StudentsController < ApplicationController
    def index 
        @students = Student.all
    end 
    def new 
        @student = Student.new
    end 

    def show 
        @student = Student.find_by_id(params[:id])
    end 

    def create 
        @student = Student.new(params_path)
        @student.save 
        redirect_to student_path(@student)
    end 

    def edit 
        @student = Student.find_by_id(params[:id])
    end 


    def update 
        @student = Student.find_by_id(params[:id])
        @student.update(params_path)
        redirect_to student_path(@student)
    end 

    
    private 

    def params_path
        params.require(:student).permit!
    end
end 