class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      if user.admin == true
        session[:user_id] = user.id
        redirect_to admin_users_path(user.id)
      else
        session[:user_id] = user.id
        redirect_to user_path(user.id)
      end
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def show
    @user = User.all
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
