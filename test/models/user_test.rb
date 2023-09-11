require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should have columns' do 
    assert User.column_names.include?('email')
    assert User.column_names.include?('role')
  end

  test 'should default to public_user on create' do 
    user = User.create(email: 'me@here.com', password: 'password')
    assert user.public_user?
  end
end
