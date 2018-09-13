class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    if params['test'] == 'hit'
      @tasks = Task.search(params[:title], params[:status])
      @search = Task.ransack(params[:q])
    else
    # 終了期限のソート
      @search = Task.ransack(params[:q])
      @tasks = @search.result
    end
      @tasks = @tasks.page(params[:page])
  end

  def new
    @task = Task.new
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path,notice:"たすくをつくりました"
    else
      render 'new',notice:"たすくができてないです"
    end
  end

  def edit
  end

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
    params.require(:task).permit(:title, :content, :limit_time, :status, :priority_color)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
