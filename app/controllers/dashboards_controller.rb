class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!

  def index; end

  def admin_dashboard; end
end
