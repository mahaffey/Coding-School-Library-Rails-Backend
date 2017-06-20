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





end
