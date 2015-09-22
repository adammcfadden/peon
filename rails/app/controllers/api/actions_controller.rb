class Api::ActionsController < ApplicationController
  def index
    render json: Action.all
  end

  def show
    render json: Action.find(params[:id])
  end
end
