class AdminUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy,:roll_change]
  before_action :admin_user, only: [:index,:destroy,:show,:edit]
  def index
    @users = User.all
    @tasks = Task.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path(@user.id)
    else
      redirect_to admin_users_path
    end
 end

  def show
    @tasks = Task.all
    @tasks = @tasks.page(params[:page])
  end

  def edit;end

  def destroy
    if current_user == @user
      redirect_to admin_users_path
    else
      @user.destroy
      redirect_to admin_users_path
    end
  end

end

private

def task_params
  params.require(:task).permit(:title, :content, :limit_time, :status, :priority_color,:user_id)
end

def user_params
  params.require(:user).permit(:name, :email, :password,:password_confirmation,:admin)
end

def set_user
  @user = User.find(params[:id])
end

def admin_user
  redirect_to users_path unless current_user.admin?
end
