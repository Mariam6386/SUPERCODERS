class ReviewsController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @review = Review.new
  end

  def create
    @job = Job.find(params[:job_id])
    @review = Review.new(review_params)
    @review.job = @job
    @review.save!
    redirect_to root_path
  end

  # def show
  #   @review = Review.new
  # end

  def index
    @reviews = current_user.reviews
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
