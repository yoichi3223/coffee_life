class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:postcode])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
  end
end
