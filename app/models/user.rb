class User<ActiveRecord::Base
  attr_accessor :username, :password, :balance
end

class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
end
