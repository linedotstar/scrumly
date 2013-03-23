class ProjectsController < ApplicationController

  respond_to :html, :json

  def index
    @projects = Project.all
    respond_with @projects
  end

  def show
    @project = Project.find(params[:id])
    respond_with @project
  end

  def create
    @project = Project.new(params[:project])
    @project.save!
    respond_with @project
  end

end
