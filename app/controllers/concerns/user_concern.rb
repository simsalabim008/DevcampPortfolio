module UserConcern
  extend ActiveSupport::Concern

  def guest_user
    @guest_user = User.new(name: "Guest")
  end

  def current_user
    super || guest_user
  end
end