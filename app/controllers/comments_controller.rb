class CommentsController < ApplicationController
  def index
    @comment_topics = current_user.comment_user
  end

  def new
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
    @comment.user_id = session[:user_id]
  end

  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to topics_path, success: "コメントしました"
    else
      flash.now[:danger] = "コメントに失敗しました"
      redirect_to topics_path
    end
  end

    private
  def comment_params
    params.require(:comment).permit(:user_id, :topics_id, :content)
  end
end
