class CommentsController < ApplicationController
  before_filter :load_story
  before_filter :load_comment, only: [:show, :update, :destroy]

  respond_to :html, :json

  def index
    @comments = @story.comments
    respond_with @comments
  end

  def show
    respond_with @comment
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    respond_with @comment
  end

  def update
    @comment.update_attributes(params[:comment])
    respond_with @comment
  end

  def destroy
    @comment.destroy
    respond_with @comment
  end

  private

  def load_story
    @story = Story.find params[:story_id]
  end

  def load_comment
    @comment = Comment.find params[:id]
  end
end
