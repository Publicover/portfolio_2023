require "test_helper"

class AppTest < ActiveSupport::TestCase
  test 'should have columns' do 
    assert App.column_names.include?('name')
    assert App.column_names.include?('img_url')
    assert App.column_names.include?('description')
    assert App.column_names.include?('short_description')
    assert App.column_names.include?('time_period')
    assert App.column_names.include?('additional_notes')
    assert App.column_names.include?('biggest_challenge')
  end

  test 'should know client' do 
    assert_equal clients(:one), apps(:one).client
  end

  test 'should delegate client name' do 
    assert_equal clients(:one).name, apps(:one).client_name
  end 

  test 'should delegate client time_period' do 
    assert_equal clients(:one).time_period, apps(:one).client_time_period
  end
end
