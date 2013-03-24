class SprintsController < ApplicationController
  before_filter :load_project
  before_filter :load_sprint, only: [:show, :update, :destroy]

  respond_to :html, :json

  def index
    @sprints = @project.sprints
    respond_with @sprints
  end

  def show
    respond_with @sprint, include: :stories
  end

  def create
    @sprint = Story.new(params[:sprint])
    @sprint.save
    respond_with @sprint
  end

  def update
    @sprint.update_attributes(params[:sprint])
    respond_with @sprint
  end

  def destroy
    @sprint.destroy
    respond_with @sprint
  end

  private

  def load_project
    @project = Project.find params[:project_id]
  end

  def load_sprint
    @sprint = Story.find params[:id]
  end
end
