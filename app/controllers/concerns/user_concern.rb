module UserConcern
  extend ActiveSupport::Concern

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest user"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end

  def current_user
    super || guest_user
  end
end