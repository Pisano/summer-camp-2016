class User < ApplicationRecord

  has_many :listings
  has_secure_password
end
