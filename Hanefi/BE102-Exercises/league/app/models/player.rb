class Player < ActiveRecord::Base
  belongs_to :team
  validates_uniqueness_of :name, :scope => :surname
end
