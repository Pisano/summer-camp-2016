class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true
  validates :token, uniqueness: true, allow_blank: true

  def generate_token!
    loop do
      self.token = SecureRandom.hex
      break if valid?
    end
    save

    self # return self for chaining
  end
end
