class AcceptanceCriteriaController < ApplicationController
  before_filter :load_story
  before_filter :load_acceptance_criterium, only: [:show, :update, :destroy]

  respond_to :html, :json

  def index
    @acceptance_criteria = @story.acceptance_criteria
    respond_with @acceptance_criteria
  end

  def show
    respond_with @acceptance_criterium
  end

  def create
    @acceptance_criterium = AcceptanceCriterium.new(params[:acceptance_criterium])
    @acceptance_criterium.save
    respond_with @acceptance_criterium
  end

  def update
    @acceptance_criterium.update_attributes(params[:acceptance_criterium])
    respond_with @acceptance_criterium
  end

  def destroy
    @acceptance_criterium.destroy
    respond_with @acceptance_criterium
  end

  private

  def load_story
    @story = Story.find params[:story_id]
  end

  def load_acceptance_criterium
    @acceptance_criterium = AcceptanceCriterium.find params[:id]
  end
end
