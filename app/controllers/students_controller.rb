class StudentsController < ApplicationController
    
    def index # renders the index erb
        @students = Student.all
    end
    
    def new # Renders the new erb, but doesn't do anything with this object.
        @student = Student.new
    end

    def create # doesn't require a view
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def show # renders the show erb
        @student = Student.find(params[:id])
    end

    def edit # renders the edit erb
        @student = Student.find(params[:id])
    end

    def update # doesn't require a view
        @student = Student.find(params[:id])
        @student.update(student_params(:first_name, :last_name)) # we permit these two arguments to be changed.
        redirect_to student_path(@student)
    end

    private

    def student_params(*args) # require means that the params that get passed in MUST contain a key called student.
        params.require(:student).permit(*args) # permit means that the params hash may have whatever keys are in it. 
    end

# The '(*)' in '(*args)' - This is the splat operator, 
# which comes from ruby (and is thus not rails specific). 
# It can be applied in two ways depending on where it is used:

# to "pack" a number of arguments into an array
# to split up an array into an argument list
# In your function, you see the splat operator used in the function definition. 
# The result is that the function accepts any number of arguments. 
# The complete argument list will be put into args as an array.

end