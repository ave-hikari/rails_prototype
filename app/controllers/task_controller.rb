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
      redirect_to action: 'list'
    else
      render 'new'
    end
  end

  # 削除
  def delete
    # TODO: resourcesを指定しない場合でのupdate,deleteでidを渡すことはできないのか？
    @task = Task.find(params[:id])
    @task.destloy
  end

  private
  def task_params
    params.require(:task).permit(:task_name, :term_at)
  end
end
