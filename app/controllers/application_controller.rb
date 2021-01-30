class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include GuestUser

  def current_user
    super || guest_user
  end
end
