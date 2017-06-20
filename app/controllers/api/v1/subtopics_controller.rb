class Api::V1::SubtopicsController < ApplicationController
  before_action :set_subtopic, only: [:show,:update,:destroy]

  def index
    @subtopics = Topic.find(params[:topic_id]).subtopics
    render json: @subtopics.order(:name), status: 200
  end

  def index_all
    @subtopics = Subtopic.all
    render json: @subtopics.order(:name), status: 200
  end

  def show
    render json: @subtopic, status: 200
  end

  def create
    @subtopic = Subtopic.new(subtopic_params)
    if @subtopic.save
      render json: @subtopic, status: 201
    else
      render json: {message: @subtopic.errors.full_messages}, status: 500
    end
  end

  def update
    if @subtopic.update(subtopic_params)
      render json: @subtopic, status: 200
    else
      render json: {message: @subtopic.errors.full_messages}, status: 500
    end
  end

  def destroy
    @subtopic.destroy
    render json: {message:"You successfully deleted the subtopic"}, status: 204
  end

  private

    def subtopic_params
      params.require(:subtopic).permit(:name, :pic_url, :topic_id)
    end

    def set_subtopic
      @subtopic = Subtopic.find(params[:id])
    end

end
