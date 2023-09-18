require "test_helper"

class ClientTest < ActiveSupport::TestCase
  test 'should have columns' do 
    assert Client.column_names.include?('name')
    assert Client.column_names.include?('time_period')
  end

  test 'should know children' do 
    assert clients(:one).apps.include?(apps(:one))
  end
end
