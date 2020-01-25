class SchoolClassesController < ApplicationController

    def new 
        @class = SchoolClass.new
    end 

    def create 
        @class = SchoolClass.new(schoolclass_params)
        @class.save
        redirect_to school_class_path(@class)
    end 

    def show
        @class = SchoolClass.find_by(params[:id])
    end 

    def edit
        @class = SchoolClass.find_by(params[:id])
    end 

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(schoolclass_params)
        @class.save
        redirect_to school_class_path(@class)
    end 

    private

    def schoolclass_params
        params.require(:school_class).permit(:title, :room_number)
    end
    
end 