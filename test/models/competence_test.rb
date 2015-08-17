require 'test_helper'

class CompetenceTest < ActiveSupport::TestCase
  setup :initialize_competence

  def teardown
    @competence1 = nil
  end

  test 'should not create competence without any input' do
    competence = Competence.new
    assert_not competence.save, 'Saved a competence without any input!'
  end

  test 'should not create competence without title_id' do
    competence = Competence.new(points: @competence1.points, level_id: @competence1.level_id, bill_id: @competence1.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without points' do
    competence = Competence.new(title_id: @competence1.title_id, level_id: @competence1.level_id, bill_id: @competence1.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without level_id' do
    competence = Competence.new(title_id: @competence1.title_id, points: @competence1.points, bill_id: @competence1.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without bill_id' do
    competence = Competence.new(title_id: @competence1.title_id, points: @competence1.points, level_id: @competence1.level_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  private

  def initialize_competence
    @competence1 = competences(:competence1)
  end
end
