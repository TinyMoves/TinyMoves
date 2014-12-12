class HomeController < ApplicationController
  def index
  	if logged_in?
  		# @num_to_accept = TaskAssignment.moves_to_accept(current_user.id).size
  		# @num_to_approve = TaskResponse.moves_to_approve(current_user.id).size
  	end
  end

  private 

  def user_params
    params.require(:user).permit(:id)
  end
end
