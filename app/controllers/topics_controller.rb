class TopicsController < ApplicationController
  def index
    @topics = Topic.all.includes(:favorite_users)
  end

  def new
    @topic=Topic.new
  end

  def create
    @topic = current_user.topics.new(topic_params)

    if @topic.save
      redirect_to topics_path, success: "投稿に成功しました"
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  def destroy
      @topic = Topic.find_by(user_id: current_user.id, topic_id: params[:topic_id])

      if @topic.destroy
        redirect_to topics_path, success: "投稿を削除しました"
      else
        redirect_to topics_path, danger: "投稿の削除に失敗しました"
      end
  end

      private
    def topic_params
      params.require(:topic).permit(:image, :description)
    end
end
