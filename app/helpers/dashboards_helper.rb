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

  def logout_link
    render 'header/logout' if current_user
  end

  def admin_dashboard_link
    return unless current_user

    link_to 'Admin Dashboard', admin_dashboards_path, class: 'nav-link'
  end

  # rubocop:disable Rails/ContentTag
  def show_card_time_period(app)
    return if app.time.blank?

    tag :div, class: 'card-footer text-muted' do
      app.time_period
    end
  end
  # rubocop:enable Rails/ContentTag
end
