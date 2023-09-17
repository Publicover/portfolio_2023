module ApplicationHelper
  include Pagy::Frontend

  def show_header 
    if current_page?(root_path) || (params[:controller] == 'apps' && params[:action] == 'show') || (params[:controller] == 'apps' && params[:action] == 'tagged')
      render 'header/header'
    else 
      render 'header/admin_header'
    end
  end
end
