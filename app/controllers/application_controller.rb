class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate_user!
  #
  # def index
  #   @user = current_user
  #   @teacher = current_user.teachers
  # end
end
