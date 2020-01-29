class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    
    redirect_to @school_class
  end
  
  def show
    @school_class = current_class
  end

  def edit
    @school_class = current_class
  end

  def update
    @school_class = current_class
    @school_class.update(school_class_params(:title, :room_number))

    redirect_to @school_class
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def current_class
    SchoolClass.find(params[:id])
  end
end