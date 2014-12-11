class ApproveamoveController < ApplicationController

  # all moves that need to be approved
  def all
    @assignments = TaskAssignment.moves_to_approve(current_user.id)
  end

  # show page for the individual move to be approved
  def move
    @assignment = TaskAssignment.find(params[:id])
  end

  def update
    @assignment = TaskAssignment.find(params[:id])
    if @assignment.update_attributes(params[:section])
      redirect_to home_url
    else
      render :action => 'moveassignment_approve'
    end
  end

  private 

  # def user_params
  #   params.require(:user).permit(:id)
  # end

end
