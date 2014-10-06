class GroupsController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]


	def new
		@group = Group.new
		@faculty = Faculty.find(params[:faculty_id])
	end

    def create
    	@group = Group.new(group_params)
 
        if @group.save
            redirect_to @group
	    else
	        render 'new'
	    end
    end

	def edit
	    @group = Group.find(params[:id])
	end

	def update
	    @group = Group.find(params[:id])
	 
	    if @group.update(group_params)
	        redirect_to @group
	    else
	        render 'edit'
	    end
	end

    def show
        @group = Group.find(params[:id])
	  	@faculty = Faculty.find(@group.faculty_id)
	  	@days = ["Понедельник",
	        "Вторник",
	        "Среда",
	        "Четверг",
	        "Пятница",
	        "Суббота"]
    end

	def destroy
	  	@group = Group.find(params[:id])
	  	@faculty = Faculty.find(@group.faculty_id)
	  	@group.destroy
	 
	  	redirect_to @faculty
	end

    private
	    def group_params
	        params.require(:group).permit(:cource, :name, :faculty_id)
	    end
end
