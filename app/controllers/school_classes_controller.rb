class SchoolClassesController < ApplicationController
    def index
        @classes = SchoolClass.all 
    end 
    def new 
       @class = SchoolClass.new
    end 

    def show 
        @class = SchoolClass.find_by_id(params[:id])
    end 

    def create 
        @class = SchoolClass.new(params_path)
        @class.save 
        redirect_to school_class_path(@class)
    end 

    def edit 
        @class = SchoolClass.find_by_id(params[:id])
    end 

    def update 
        @class = SchoolClass.find_by_id(params[:id])
        @class.update(params_path)
        redirect_to school_class_path(@class)
    end 

    private 

    def params_path 
        params.require(:school_class).permit(:title, :room_number)
    end 

    
end 