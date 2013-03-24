class TasksController < ApplicationController
  before_filter :load_story
  before_filter :load_task, only: [:show, :update, :destroy]

  respond_to :html, :json

  def index
    @tasks = @story.tasks
    respond_with @tasks
  end

  def show
    respond_with @task
  end

  def create
    @task = Story.new(params[:task])
    @task.save
    respond_with @task
  end

  def update
    @task.update_attributes(params[:task])
    respond_with @task
  end

  def destroy
    @task.destroy
    respond_with @task
  end

  private

  def load_story
    @story = Story.find params[:story_id]
  end

  def load_task
    @task = Task.find params[:id]
  end
end
