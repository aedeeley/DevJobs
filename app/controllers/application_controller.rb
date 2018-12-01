class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_start_time

  def set_start_time
    @start_time = Time.now.to_f
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

end