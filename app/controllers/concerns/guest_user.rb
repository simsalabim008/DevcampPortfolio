module GuestUser
  extend ActiveSupport::Concern

  def guest_user
    @guest_user = User.new(name: "Guest")
  end
end