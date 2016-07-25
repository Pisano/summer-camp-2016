class Team < ActiveRecord::Base
  has_many :players, dependent: :destroy
  validates :name, presence: true, uniqueness:true
end
