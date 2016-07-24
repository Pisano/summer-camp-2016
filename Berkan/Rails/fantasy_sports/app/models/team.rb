class Team < ActiveRecord::Base
  has_many :player, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
