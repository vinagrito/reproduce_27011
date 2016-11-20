class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user

  def authenticate_user
    render status: 403 if unauthorized?
  end

  private

  def unauthorized?
    # KISS
    false
  end
end
