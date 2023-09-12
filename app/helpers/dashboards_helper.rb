# frozen_string_literal: true

module DashboardsHelper
  def dev_time
    distance_of_time_in_words(Time.zone.today, Date.new(2016, 3, 30))
  end

  def writer_time
    distance_of_time_in_words(Date.new(2019, 1, 1), Date.new(2005, 7, 30))
  end

  def hamburg_time
    distance_of_time_in_words(Time.zone.today, Date.new(2020, 10, 30))
  end
end
