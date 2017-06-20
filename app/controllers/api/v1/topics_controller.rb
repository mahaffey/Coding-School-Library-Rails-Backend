class Api::V1::TopicsController < ApplicationController
  def index
    @topics = Topic.all
    render json: @topics.order(:name), status: 200
  end

  def show
      @topic = Topic.find(params[:id])
      render json: @topic, status: 200
  end

end
