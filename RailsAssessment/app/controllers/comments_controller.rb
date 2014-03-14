class CommentsController < ApplicationController

  def create
    @comment = Comment.new(post_params)
    if @comment.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:comment).permit(:comment)
  end

end
