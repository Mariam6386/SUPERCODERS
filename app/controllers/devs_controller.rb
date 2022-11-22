class DevsController < ApplicationController

  def show
    @dev = Dev.find(dev_params)
  end

  def dev_params
    params.require(:dev).permit(:id)
  end
end
