class DevsController < ApplicationController

  def index
    @devs = Dev.all
  end

  def show
    @dev = Dev.find(params[:id])
  end

  # def dev_params
  #   params.require(:dev).permit(:id)
  # end
end
