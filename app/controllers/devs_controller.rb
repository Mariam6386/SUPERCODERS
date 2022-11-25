class DevsController < ApplicationController
  def index
    @devs = Dev.all
    @markers = @devs.geocoded.map do |dev|
      {
        lat: dev.latitude,
        lng: dev.longitude,
        info_window: render_to_string(partial: "info_window", locals: {dev: dev})
      }
    end
  end

  def show
    @dev = Dev.find(params[:id])
  end

  def new
    @dev = Dev.new
  end

  def create
    @dev = Dev.new(dev_params)
    @dev.save
    redirect_to dev_path(@dev)
  end

  private

  def dev_params
    params.require(:dev).permit(:name, :github_link, :description, :price, :skills, :address)
  end
end
