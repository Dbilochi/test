class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # respond_to :html, :json
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def configure_permitted_parameters
  #   added_attrs = %i[username image email password password_confirmation remember_me]
  #   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # end
end
