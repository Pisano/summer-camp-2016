class Listing < ApplicationRecord

  belongs_to :user

  enum sharing_type: [:private_room, :shared_room, :entire_house]

end
