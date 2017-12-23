class Helpers
  def self.current_user(id)
    User.find(id[:user_id])
  end

  def self.is_logged_in?(session)
    if current_user(session)
      return true
    else
      return false

    end
  end
end