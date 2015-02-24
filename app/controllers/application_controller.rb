class ApplicationController < ActionController::Base
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

  def require_permission
    if not current_user.has_role?(:admin)
      redirect_to :authenticated_root
    end
  end

  # Catching exceptions from Cancan
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :authenticated_root, alert: exception.message
  end
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end
end
