class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  allow_browser versions: :modern

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [ :username, :password, :remember_me ])
  end
end
