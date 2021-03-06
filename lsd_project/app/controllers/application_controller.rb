class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def is_admin?
    if not current_user.nil? && current_user.is_admin
      true
    else
      false
    end
  end
end
