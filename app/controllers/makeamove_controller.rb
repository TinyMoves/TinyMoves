class MakeamoveController < ApplicationController

  # upon accepting/declining the move, partial shown depends on acceptance/denial of assignment
  def move
    @move = TaskAssignment.find(params[:id])
  end

  def accept
    @response = TaskResponse.new
  end

  def decline
    @response = TaskResponse.new
  end

  # list all moves pending acceptance/declination
  def all
    @assignments = TaskAssignment.moves_to_make(current_user.id)
  end

  def get_from_pool
    # grab random move from pool
    @move = TaskAssignment.random_move(user.id)
    if @move.save
      # redirects to makeamove_new
      redirect_to @move
    else
      # display failed flash message
      render :action => 'makeamove_all'
    end
  end

  def create
    @response = TaskResponse.new(params[:task_response])
    if @response.save
      redirect_to 'makeamove_all' # prob need to add this route before you can redirect
    else
      render :action => 'makeamove_new'
    end
  end

  # def makeamove_destroy
  #   @assignment = TaskAssignment.find(params[:id])
  #   @assignment.destroy
  # end

  private 

  # def user_params
  #   params.require(:user).permit(:id)
  # end

end
