class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = find_student
	end

	def new
		@student = Student.new
	end

	def create 
		@student = Student.new 
		@student.update(permitted_params)
		@student.save
		redirect_to student_path(@student.id)
	end 

	def edit
		@student = find_student
	end 

	def update
		@student = find_student
		@student.update(permitted_params)
		@student.save
		redirect_to student_path(@student.id)
	end

	private

	def find_student
		Student.find_by_id(params[:id])
	end

	def permitted_params
		params.require(:student).permit(:first_name, :last_name)
	end
end