class Competence < ActiveRecord::Base
  ### CONSTANTS ###
  cattr_accessor :competences, :point_options, :levels
  self.competences = [['Research & Innovation', 0],
                      ['Concepting', 1],
                      ['Multimedia Design', 2],
                      ['Multimedia Production', 3],
                      ['Quality Monitoring & Implementation', 4],
                      ['Multidisciplinary Teamwork', 5],
                      ['Communication', 6],
                      ['Project Management', 7],
                      ['Sharing', 8],
                      ['Growth & Reflection', 9]]
  self.point_options = [3, 6, 9, 12]
  self.levels = [['Basis', 0], ['Gevorderd', 1], ['Expert', 2]]

  # Competences
  RESEARCH_AND_INNOVATION = 0
  CONCEPTING = 1
  MULTIMEDIA_DESIGN = 2
  MULTIMEDIA_PRODUCTION = 3
  QUALITY_MONITORING_AND_IMPLEMENTATION = 4
  MULTIDICIPLINARY_TEAMWORK = 5
  COMMUNICATION = 6
  PROJECT_MANAGEMENT = 7
  SHARING = 8
  GROWTH_AND_REFLECTION = 9

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
    return 'Research & Innovation' if title_id == RESEARCH_AND_INNOVATION
    return 'Concepting' if title_id == CONCEPTING
    return 'Multimedia Design' if title_id == MULTIMEDIA_DESIGN
    return 'Multimedia Production' if title_id == MULTIMEDIA_PRODUCTION
    return 'Quality Monitoring & Implementation' if title_id == QUALITY_MONITORING_AND_IMPLEMENTATION
    return 'Multidisciplinary Teamwork' if title_id == MULTIDICIPLINARY_TEAMWORK
    return 'Communication' if title_id == COMMUNICATION
    return 'Project Management' if title_id == PROJECT_MANAGEMENT
    return 'Sharing' if title_id == SHARING
    return 'Growth & Reflection' if title_id == GROWTH_AND_REFLECTION
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
