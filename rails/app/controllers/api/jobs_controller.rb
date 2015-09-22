class Api::JobsController < ApplicationController
  def index
    render json: Job.all
  end

  def create
    job = Job.new(job_params)
    if job.save
      render json: job, status: 200
    else
      render json: job, status: 422
    end
  end

  def show
    render json: Job.find(params[:id])
  end

  private
  def job_params
    params.require(:job).permit(:position, :company)
  end
end
