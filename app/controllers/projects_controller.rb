class ProjectsController < ApplicationController
  before_filter :load_project, only: [:show, :update, :destroy]

  respond_to :html, :json

  def index
    @projects = Project.all
    respond_with @projects
  end

  def show
    @stories = @project.stories
    respond_with @project, include: :stories
  end

  def create
    @project = Project.new(params[:project])
    @project.save
    respond_with @project
  end

  def update
    @project.update_attributes(params[:project])
    respond_with @project
  end

  def destroy
    @project.destroy
    respond_with @project
  end

  private

  def load_project
    @project = Project.find params[:id]
  end
end
