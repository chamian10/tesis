class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :authenticate_patient!, :set_timezone

  skip_before_action :authenticate_patient!, only: [:game, :contact, :profile, :index]

  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)

      root_path

  end

  #def alert
  #
  #  unless patient_signed_in?
  #    flash[:error] = "You must be logged in to access this section"
  #  end
  #
  #end

  def set_timezone
    Time.zone = 'GMT'
  end

end
