class StoriesController < ApplicationController
  before_filter :load_project
  before_filter :load_story, only: [:show, :update, :destroy]

  respond_to :html, :json

  def index
    @stories = @project.stories
    respond_with @stories
  end

  def show
    respond_with @story, include: :stories
  end

  def create
    @story = Story.new(params[:story])
    @story.save
    respond_with @story
  end

  def update
    @story.update_attributes(params[:story])
    respond_with @story
  end

  def destroy
    @story.destroy
    respond_with @story
  end

  private

  def load_project
    @project = Project.find params[:project_id]
  end

  def load_story
    @story = Story.find params[:id]
  end
end
