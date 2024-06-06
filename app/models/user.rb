class User < ApplicationRecord
  has_secure_password

  before_create :generate_authentication_token

  def generate_authentication_token
    self.auth_token = SecureRandom.hex
  end
end
