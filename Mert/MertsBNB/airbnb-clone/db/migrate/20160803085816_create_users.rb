class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :email
      t.string :phone_number
      t.string :profile_picture_url

      t.timestamps
    end
  end
end
