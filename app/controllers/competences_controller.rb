class CompetencesController < ApplicationController

  def create
    @competence = Competence.new(competence_params)
    render @competence if @competence.save
  end

  private

  def competence_params
    params.require(:competence).permit(:title_id, :points, :level_id, :bill_id)
  end

end