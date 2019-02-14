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
    # binding.pry
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to topics_path, success: "コメントしました"
    else
      redirect_to comments_new_path, danger: "コメント投稿に失敗しました"
    end
  end

    private
  def comment_params
    params.require(:comment).permit(:user_id, :topic_id, :content)
  end
end
