class TaskController < ApplicationController
  def list
    @task = Task.all
  end

  # 作成画面
  def new
    @task = Task.new
  end

  # 投稿
  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "success!!"
      redirect_to @task
    else
      render 'new'
    end
  end

  private
  def task_params
    params.require(:task).permit(:task_name, :term_at)
  end
end
