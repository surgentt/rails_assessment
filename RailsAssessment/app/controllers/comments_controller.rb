class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    #binding.pry
    #raise params.inspect
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    Comment.find(params[:id]).destroy
    redirect_to :back
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end

end
