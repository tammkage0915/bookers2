class ApplicationController < ActionController::Base
  include Authentication
  helper_method :current_user
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_logout_url
    root_url
  end
end
