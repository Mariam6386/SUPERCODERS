class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @job = Job.find(params[:job_id])
    @review = Review.new(review_params)
    @review.job = @job
    @review.save!
    redirect_to dev_path(@review)
  end


  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
