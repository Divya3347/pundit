class ApplicationController < ActionController::Base
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:userrole, :email, :password, :password_confirmation)}
    end
    def user_not_authorized
      flash[:danger] = 'You are not authorized to perform this action.'
      redirect_to root_path
    end
end
