class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :token, uniqueness: true, allow_blank: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def generate_token!
    loop do
      self.token = SecureRandom.hex
      break if self.valid?
    end
    self.save

    self
  end
end
