class CompetencesController < ApplicationController

  def create
    @competence = Competence.new(competence_params)
    redirect_to @competence if @competence.save
  end

  private

  def competence_params
    params.require(:competence).permit(:title, :points, :level)
  end
end