class User < ApplicationRecord

  has_many :listings
  has_secure_password
<<<<<<< HEAD

  validates :email, uniqueness: true
  validates :token, uniqueness: true, allow_blank: true

  def generate_token!
    loop do
      self.token = SecureRandom.hex
      break if valid?
    end

    save

    self
  end

=======
>>>>>>> 9a4bfa75de63aa2cf6ce3e1e4277bd8edb1e198b
end
