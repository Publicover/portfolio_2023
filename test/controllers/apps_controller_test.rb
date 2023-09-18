require "test_helper"

class AppsControllerTest < ActionDispatch::IntegrationTest
  setup do 
    login_as users(:one)
  end 

  test 'should get index' do
    get apps_path
    assert_response :success
  end

  test 'should get show' do
    get app_path(apps(:one))
    assert_response :success
  end

  test 'should get new' do
    get new_app_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('App.count') do
      post apps_path, params: {
        app: {
          client_id: clients(:one).id,
          name: Faker::Business.name, 
          img_url: "#{Faker::Lorem}.png", 
          description: Faker::Lorem.sentence(word_count: 15), 
          short_description: Faker::Lorem.sentence(word_count: 5), 
          time_period: 'Winter 2020', 
          additional_notes: Faker::Lorem.sentence(word_count: 25), 
          biggest_challenge: Faker::Lorem.sentence(word_count: 25),
          tag_list: 'Rails 7, best computer skills ever, Bootstrap 5'
      }
    }
    end
    assert_redirected_to apps_path
  end

  test 'should get edit' do
    get edit_app_path(apps(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch app_path(apps(:one)), params: {
      app: {
        name: word
      }
    }
    assert_equal word, apps(:one).reload.name
    assert_redirected_to apps_path
  end

  test 'should delete' do
    assert_difference('App.count', -1) do
      delete app_path(apps(:one))
    end
    assert_redirected_to apps_path
  end
end
