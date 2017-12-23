class Helpers
  def current_user(id)
    User.find(id: id)
  end

  def is_logged_in?
  end
end