# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class AdminController < ApplicationController
 
  before_filter :authenticate

  protected

  def authenticate
    redirect_to login_path unless current_user
  end

end
