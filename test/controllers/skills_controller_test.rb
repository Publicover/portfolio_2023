require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do 
    login_as users(:one)
  end

  test 'should get index' do
    get skills_path
    assert_response :success
  end

  test 'should get show' do
    get skill_path(skills(:one))
    assert_response :success
  end

  test 'should get new' do
    get new_skill_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Skill.count') do
      post skills_path, params: {
        skill: {
          name: Faker::Lorem.word
      }
    }
    end
    assert_redirected_to skills_path
  end

  test 'should get edit' do
    get edit_skill_path(skills(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch skill_path(skills(:one)), params: {
      skill: {
        name: word
      }
    }
    assert_equal word, skills(:one).reload.name
    assert_redirected_to skills_path
  end

  test 'should delete' do
    assert_difference('Skill.count', -1) do
      delete skill_path(skills(:one))
    end
    assert_redirected_to skills_path
  end
end
