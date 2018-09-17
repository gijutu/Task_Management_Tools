class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = current_user.tasks.all
    if params['test'] == 'hit'
      @tasks = @tasks.search(params[:title], params[:status])
      @search = @tasks.ransack(params[:q])
    else
      @search = @tasks.ransack(params[:q])
      @tasks = @search.result
    end
      @tasks = @tasks.page(params[:page])
  end

  def new
    @task = Task.new
  end

  def show;end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to tasks_path,notice:"たすくをつくりました"
    else
      render 'new',notice:"たすくができてないです"
    end
  end

  def edit;end

  def update
    if @task.update(task_params)
      redirect_to tasks_path,notice: "へんしゅうしました"
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice:"けしました"
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, :limit_time, :status, :priority_color,:user_id)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
