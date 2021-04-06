class BoardsController < ApplicationController
  # before_action :authenticate_user!
  def create
    board = Board.create(board_params)
    redirect_to root_path
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to root_path
  end
  
  private
    def board_params
      params.require(:board).permit(:text).merge(user_id: current_user.id)
    end
end
