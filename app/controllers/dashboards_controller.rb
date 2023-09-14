class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @apps = App.all.order(created_at: :desc)
  end

  def admin_dashboard; end
end
