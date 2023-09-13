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
end
