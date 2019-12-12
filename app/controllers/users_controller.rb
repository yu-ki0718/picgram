class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      redirect_to topics_path,success: "登録が完了しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
end

  private
  def log_in(user)
    session[:user_id] = user.id
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
<<<<<<< HEAD
  end
=======
  end
  
>>>>>>> c71eba26b43a82bc3a24dc9de87a1100f58b3732
