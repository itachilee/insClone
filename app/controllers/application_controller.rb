class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username,:last_name,:first_name,:password,:image,:image_cache,:description,:website])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:last_name,:first_name,:email,:password])
  end
end
