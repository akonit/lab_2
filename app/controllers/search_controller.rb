class SearchController < ApplicationController

	def by_group
	end

	def by_group_result
	  if params[:search] && params[:search] != nil && params[:search] != ""
          @groups = Group.search(params[:search])
          if @groups != nil && @groups.size > 0
      	      @group = @groups.first
			  @days = ["Понедельник",
			        "Вторник",
			        "Среда",
			        "Четверг",
			        "Пятница",
			        "Суббота"]
	      else
	      	  redirect_to search_by_group_path
	      end
	  else
	      redirect_to search_by_group_path
	  end
	end
end
