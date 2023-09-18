require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do 
    login_as users(:one)
  end

  test 'should get index' do
    get clients_path
    assert_response :success
  end

  test 'should get show' do
    get client_path(clients(:one))
    assert_response :success
  end

  test 'should get new' do
    get new_client_path
    assert_response :success
  end

  test 'should create' do
    assert_difference('Client.count') do
      post clients_path, params: {
        client: {
          name: Faker::Business.name, 
          time_period: 'NOW'
      }
    }
    end
    assert_redirected_to clients_path
  end

  test 'should get edit' do
    get edit_client_path(clients(:one))
    assert_response :success
  end

  test 'should update' do
    word = Faker::Lorem.word
    patch client_path(clients(:one)), params: {
      client: {
        name: word
      }
    }
    assert_equal word, clients(:one).reload.name
    assert_redirected_to clients_path
  end

  test 'should delete' do
    assert_difference('Client.count', -1) do
      delete client_path(clients(:one))
    end
    assert_redirected_to clients_path
  end
end
