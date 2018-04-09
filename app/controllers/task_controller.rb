class TaskController < ApplicationController
  def list
    @task = Task.all
  end
end
