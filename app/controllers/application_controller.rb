class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :authenticate_patient!

  #skip_before_filter :admin_user

  protect_from_forgery with: :exception





  def after_sign_in_path_for(resource)

      root_path

  end
end
