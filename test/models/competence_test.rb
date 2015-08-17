require 'test_helper'

class CompetenceTest < ActiveSupport::TestCase
  setup :initialize_competence

  def teardown
    @competence = nil
  end

  ### VALIDATIONS ###

  test 'should not create competence without any input' do
    competence = Competence.new
    assert_not competence.save, 'Saved a competence without any input!'
  end

  test 'should not create competence without title_id' do
    competence = Competence.new(points: @competence1.points, level_id: @competence1.level_id, bill_id: @competence1.bill_id)
    assert_not competence.save, 'Saved a competence without title_id!'
  end

  test 'should not create competence without points' do
    competence = Competence.new(title_id: @competence1.title_id, level_id: @competence1.level_id, bill_id: @competence1bill_id)
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

  ### METHODS ###

  test 'should return title name' do
    assert_equal @competence1.title, 'Research & Innovation'
    assert_equal @competence2.title, 'Concepting'
    assert_equal @competence3.title, 'Multimedia Design'
    assert_equal @competence4.title, 'Multimedia Production'
    assert_equal @competence5.title, 'Quality Monitoring & Implementation'
    assert_equal @competence6.title, 'Multidisciplinary Teamwork'
    assert_equal @competence7.title, 'Communication'
    assert_equal @competence8.title, 'Project Management'
    assert_equal @competence9.title, 'Sharing'
    assert_equal @competence10.title, 'Growth & Reflection'
  end

  test 'should return level name' do
    assert_equal @competence1.level, 'Basis'
    assert_equal @competence2.level, 'Gevorderd'
    assert_equal @competence3.level, 'Expert'
  end

  private

  def initialize_competence
    @competence1 = competences(:competence1)
    @competence2 = competences(:competence2)
    @competence3 = competences(:competence3)
    @competence4 = competences(:competence4)
    @competence5 = competences(:competence5)
    @competence6 = competences(:competence6)
    @competence7 = competences(:competence7)
    @competence8 = competences(:competence8)
    @competence9 = competences(:competence9)
    @competence10 = competences(:competence10)
  end
end
