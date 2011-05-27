class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_user!

  layout :layout_by_source

  protected

  def after_sign_in_path_for(resource_or_scope)
    dashboard_path
  end

  def layout_by_source
    devise_controller? ? 'login' : 'application'
  end

end
