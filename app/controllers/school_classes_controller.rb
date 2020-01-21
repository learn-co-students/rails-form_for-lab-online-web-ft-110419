class SchoolClassesController < ApplicationController
  before_action :find_school, only: [:show, :edit, :update]
  
  def new 
  end
  
  def create 
    school = SchoolClass.create(school_params)
    redirect_to school
  end
  
  def show 
  end
  
  def edit
  end
  
  def update
    @school.update(school_params)
    redirect_to @school
  end
  
  
  
  
  private 
  
  def school_params
    params.require(:school_class).permit!
  end
  
  def find_school 
    @school = SchoolClass.find(params[:id])
  end
  
  
end