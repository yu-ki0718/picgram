class CommentsController < ApplicationController
  def index
    @comment_topics = current_user.comment_ids
  end

  def show
     @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to topicss_path, success: "コメントしました"
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end
  end

    private
  def comment_params
    params.require(:comment).permit(:post)
  end
end
