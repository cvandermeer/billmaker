class CompetencesController < ApplicationController
  before_action :set_competence, only: :show

  def create
    @competence = Competence.new(competence_params)
    redirect_to @competence if @competence.save
  end

  def show
  end

  private

  def set_competence
    @competence = Competence.find(params[:id])
  end

  def competence_params
    params.require(:competence).permit(:title_id, :points, :level_id, :bill_id)
  end

end