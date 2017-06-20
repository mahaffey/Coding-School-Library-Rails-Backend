class Api::V1::TopicsController < ApplicationController
  before_action :set_topic, only: [:show]

  def index
    @topics = Topic.all
    render json: @topics.order(:name), status: 200
  end

  def show
      render json: @topic, status: 200
  end

  private

    def set_topic
      @topic = Topic.find(params[:id])
    end

end
