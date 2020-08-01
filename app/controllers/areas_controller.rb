class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
    @comment = Comment.new
    @comments = @area.comments.includes(:user).order("created_at DESC")

  end

  def search
    @areas = Area.search(params[:keyword])
  end
  
end
