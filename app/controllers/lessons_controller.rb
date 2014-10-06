class LessonsController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]


	def new
		@lesson = Lesson.new
		@group = Group.find(params[:group_id])
	end

    def create
    	@lesson = Lesson.new(lesson_params)
 
        if @lesson.save
            redirect_to @lesson
	    else
	        render 'new'
	    end
    end

	def edit
	    @lesson = Lesson.find(params[:id])
	end

	def update
	    @lesson = Lesson.find(params[:id])
	 
	    if @lesson.update(lesson_params)
	        redirect_to @lesson
	    else
	        render 'edit'
	    end
	end

    def show
        @lesson = Lesson.find(params[:id])
	  	@group = Group.find(@lesson.group_id)
	  	@faculty = Faculty.find(@group.faculty_id)
	  	@days = ["Понедельник",
	        "Вторник",
	        "Среда",
	        "Четверг",
	        "Пятница",
	        "Суббота"]
    end

	def destroy
	  	@lesson = Lesson.find(params[:id])
	  	@group = Group.find(@lesson.group_id)
	  	@lesson.destroy
	 
	  	redirect_to @group
	end

    private
	    def lesson_params
	        params.require(:lesson).permit(:teacher, :name, :day, :start, :end, :group_id)
	    end
end
