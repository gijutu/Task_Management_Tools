class LabelingsController < ApplicationController
  def create
    labeling = task.labelings.create(task_id:params[:task_id])
    redirect_to tasks_url
  end

  def destroy
    labeling = task.labelings.find_by(id: params[:id]).destroy
    redirect_to tasks_url
  end
end
