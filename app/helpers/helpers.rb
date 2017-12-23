class Helpers
  def self.current_user(id)
    User.find(id)
  end

  def is_logged_in?
  end
end