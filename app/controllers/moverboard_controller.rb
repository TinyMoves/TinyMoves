class MoverboardController < ApplicationController

  def all
    @rankings = User.scores
  end

  private 

  # def user_params
  #   params.require(:user).permit(:id)
  # end

end
