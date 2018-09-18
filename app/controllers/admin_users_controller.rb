class AdminUsersController < ApplicationController
  def index
    @users = User.all
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
    @user = User.find(params[:id])
    @tasks = Task.all
    @tasks = @tasks.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to admin_users_path
  end
end

private

def task_params
  params.require(:task).permit(:title, :content, :limit_time, :status, :priority_color,:user_id)
end

def user_params
  params.require(:user).permit(:name, :email, :password,:password_confirmation)
end

def set_task
  @task = Task.find(params[:id])
end
