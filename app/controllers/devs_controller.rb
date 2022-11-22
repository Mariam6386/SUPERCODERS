class DevsController < ApplicationController

  def show
    @dev = Dev.find(params[:id])
  end
end
