class Api::V1::ContentsController < ApplicationController
    before_action :set_content, only: [:show,:update,:destroy]

  def index
    @contents = Subtopic.find(params[:subtopic_id]).contents
    render json: @contents, status: 200
  end

  def index_all
    @contents = Content.all
    render json: @contents, status: 200
  end

  def show
    render json: @content, status: 200
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      render json: @content, status: 201
    else
      render json: {message: @content.errors.full_messages}, status: 500
    end
  end

  def update
    if @content.update(content_params)
      render json: @content, status: 200
    else
      render json: {message: @content.errors.full_messages}, status: 500
    end
  end

  def destroy
    @content.destroy
    render json: {message:"You successfully deleted the content"}, status: 204
  end

  private

    def content_params
      params.require(:content).permit(:title, :pic_url, :link_url, :description, :difficulty, :subtopic_id)
    end

    def set_content
      @content = Content.find(params[:id])
    end


end
