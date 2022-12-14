class DevsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "description ILIKE :query OR skills ILIKE :query OR address ILIKE :query"
      @devs = Dev.where(sql_query, query: "%#{params[:query]}%")
    else
      @devs = Dev.all
    end
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
    params.require(:dev).permit(:name, :github_link, :description, :price, :skills, :address, :photo)
  end
end
