class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  def authenticate_admin_user!
    current_user && current_user.has_role?(:admin)
  end

  # Catching exceptions from Cancan
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :authenticated_root, alert: exception.message
  end
end
