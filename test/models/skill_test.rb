require "test_helper"

class SkillTest < ActiveSupport::TestCase
  test 'should have columns' do 
    assert Skill.column_names.include?('name')
  end
end
