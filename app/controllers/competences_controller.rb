class CompetencesController < ApplicationController
  def create
    competence = Bill.find(params[:bill_id]).competences.create(competence_params)
    render json: competence
  end

  private

  def competence_params
    params.require(:competence).permit(:title_id, :points, :level_id, :bill_id)
  end
end