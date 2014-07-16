class SiteController < ApplicationController

  def index
  end

  def contact
  end

  def data
    unless current_user && current_user.is_admin?
      redirect_to root_path
    end
  end

end