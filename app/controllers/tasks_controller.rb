class TasksController < ApplicationController

# before_action :load_task, only: [:show, :update, :edit, :destroy]

  def index
    @tasks = Task.all
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def edit
     @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

   private

  # def load_task
  #   @task = Task.find(params[:id])
  # end

  def task_params
    params.require(:task).permit(:name, :description, :user)
  end

end
