class JobsController < ApplicationController

  def new
    @dev = Dev.find(params[:dev_id])
    @job = Job.new
  end

  def create
    @dev = Dev.find(params[:dev_id])
    @job = Job.new(job_params)
    @job.user = current_user
    @job.dev = @dev
    @job.save!
    redirect_to dev_jobs_path(@dev)
  end

  def show
    @job = Job.find(params[:id])
  end

  def index
    @jobs = current_user.jobs
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :id)
  end
end
