class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(session[:user_id])
   else
     render 'new'
   end
 end

 def update
   @user = User.find(params[:id])
   if current_user == @user
     redirect_to admin_users_path
   else
     if @user.update(user_params)
       redirect_to admin_users_path,notice: "へんしゅうしました"
     else
       redirect_to admin_users_path
     end
   end
 end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,:admin)
  end
end
