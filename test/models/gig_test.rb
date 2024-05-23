require "test_helper"

class GigTest < ActiveSupport::TestCase
  test 'should have columns' do 
    assert Gig.column_names.include?('additional_notes')
    assert Gig.column_names.include?('biggest_challenge')
    assert Gig.column_names.include?('client_id')
    assert Gig.column_names.include?('description')
    assert Gig.column_names.include?('img_url')
    assert Gig.column_names.include?('position')
    assert Gig.column_names.include?('short_description')
    assert Gig.column_names.include?('time_period')
  end

  test 'should know client' do 
    assert_equal clients(:one), gigs(:one).client
  end
end
