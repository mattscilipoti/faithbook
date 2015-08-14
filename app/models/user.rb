class User < ActiveRecord::Base
  # mms: no associations?
  validates :username, presence: true, uniqueness: true
  has_secure_password
end
