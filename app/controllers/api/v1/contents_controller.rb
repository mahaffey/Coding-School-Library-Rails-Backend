class Api::V1::ContentsController < ApplicationController

  def index
    @contents = Subtopic.find(params[:subtopic_id]).contents
    render json: @contents, status: 200
  end

  def index_all
    @contents = Content.all
    render json: @contents, status: 200
  end

  def show
    @content = Content.find(params[:id])
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

  private

    def content_params
      params.require(:content).permit(:title, :pic_url, :link_url, :description, :difficulty, :subtopic_id)
    end

    # def set_subtopic
    #   @subtopic = Subtopic.find(params[:id])
    # end


end
