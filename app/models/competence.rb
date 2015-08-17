class Competence < ActiveRecord::Base
  ### CONSTANTS ###
  cattr_accessor :competences, :point_options, :levels
  self.competences = [['Research & Innovation', 0], ['Concepting', 1]]
  self.point_options = [3, 6, 9, 12]
  self.levels = [['Basis', 0], ['Gevorderd', 1], ['Expert', 2]]

  # Competences
  RESEARCH_AND_INNOVATION = 0
  CONCEPTING = 1

  # Levels
  BASIC = 0
  ADVANCED = 1
  EXPERT = 2

  ### ASSOCIATIONS ###
  belongs_to :bill

  ### VALIDATIONS ###
  validates :title_id, presence: true
  validates :level_id, presence: true
  validates :points, presence: true
  validates :bill_id, presence: true

  ### METHODS ###
  def title
    if title_id == RESEARCH_AND_INNOVATION
      return 'Research & Innovation'
    elsif title_id == CONCEPTING
      return 'Concepting'
    end
  end

  def level
    if level_id == BASIC
      return 'Basis'
    elsif level_id == ADVANCED
      return 'Gevorderd'
    elsif level_id == EXPERT
      return 'Expert'
    end
  end
end
