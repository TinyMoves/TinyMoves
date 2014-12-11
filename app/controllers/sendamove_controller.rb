class SendamoveController < ApplicationController

  # form to send a new move
  def new
    @assignment = TaskAssignment.new
  end

  def create
    @assignment = TaskAssignment.new(params[:task_assignment])
    if @assignment.save
      redirect_to :home # not sure again
    else
      render :action => 'sendamove_new'
    end
  end
  
  private 

  # def user_params
  #   params.require(:user).permit(:id)
  # end

end
