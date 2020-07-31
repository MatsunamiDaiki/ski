class CommentsController < ApplicationController
  
  def create
    @comment = Comment.create(comment_params)
    # redirect_to "/areas/#{comment.area.id}"
    respond_to do |format|
      format.html { redirect_to area_path(params[:area_id])  }
      format.json
    end
  end

  def search
    @comments = Comment.search(params[:keyword])
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, area_id: params[:area_id])
end
  
end
