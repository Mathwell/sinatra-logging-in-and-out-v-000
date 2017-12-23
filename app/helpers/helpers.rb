class Helpers
  def self.current_user(id)
    User.find(id[:user_id])
  end

  def is_logged_in?
  end
end