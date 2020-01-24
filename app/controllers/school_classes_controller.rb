class SchoolClassesController < ApplicationController 
	def index
		@classes = SchoolClass.all
	end

	def show 
		@class = find_class 
	end

	def new
		@class = SchoolClass.new
	end

	def create
		@class = SchoolClass.new
		@class.update(permit_params)
		@class.save
		redirect_to school_class_path(@class.id)
	end

	def edit 
		@class = find_class 
	end 

	def update
		@class = find_class 
		@class.update(permit_params)
		@class.save
		redirect_to school_class_path(@class.id)
	end

	private

	def permit_params
		params.require(:school_class).permit(:room_number, :title)
	end

	def find_class
		SchoolClass.find_by_id(params[:id])
	end


end