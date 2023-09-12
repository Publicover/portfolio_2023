class ApplicationController < ActionController::Base
  include Pundit::Authorization
  include Pagy::Backend

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    return admin_dashboards_path if resource.admin?

    new_user_session_path
  end
end
