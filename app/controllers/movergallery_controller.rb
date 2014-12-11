class MovergalleryController < ApplicationController

  def all
    @responses = TaskResponse.all
  end
  
  private 

  # def user_params
  #   params.require(:user).permit(:id)
  # end

end
