require 'test_helper'

class CompetenceTest < ActiveSupport::TestCase
  setup :initialize_competence

  def teardown
    @competence = nil
  end

  test 'should not create competence without any input' do
    competence = Competence.new
    assert_not competence.save, 'Saved a competence without any input!'
  end

  test 'should not create competence without title_id' do
    competence = Competence.new(points: @competence.points, level_id: @competence.level_id, bill_id: @competence.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without points' do
    competence = Competence.new(title_id: @competence.title_id, level_id: @competence.level_id, bill_id: @competence.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without level_id' do
    competence = Competence.new(title_id: @competence.title_id, points: @competence.points, bill_id: @competence.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without bill_id' do
    competence = Competence.new(title_id: @competence.title_id, points: @competence.points, level_id: @competence.level_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  private

  def initialize_competence
    @competence = competences(:competence1)
  end
end
