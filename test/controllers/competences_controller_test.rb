require 'test_helper'

class CompetencesControllerTest < ActionController::TestCase
  setup :initialize_competence

  def teardown
    @competence = nil
  end

  private

  def initialize_competence
    @competence = competences(:competence1)
    @bill = bills(:bill1)
  end
end
