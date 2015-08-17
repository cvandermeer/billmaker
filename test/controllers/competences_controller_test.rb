require 'test_helper'

class CompetencesControllerTest < ActionController::TestCase
  setup :initialize_competence

  def teardown
    @competence = nil
  end

  test 'should create competence' do
   assert_difference('Competence.count') do
      post :create, competence: { title_id: @competence.title_id, level_id: @competence.level_id, 
                                  points: @competence.points, bill_id: @competence.bill }
    end
  end

  private

  def initialize_competence
    @competence = competences(:competence1)
  end
end
