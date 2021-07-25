class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permited_parameters, if: :devise_controller?
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  protected

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :professor])
  end
end
