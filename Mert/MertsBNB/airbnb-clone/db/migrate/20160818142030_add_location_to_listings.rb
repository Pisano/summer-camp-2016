class AddLocationToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :location_lat, :float
    add_column :listings, :location_lon, :float
    add_column :listings, :location_name, :string
  end
end
