class AddCloudinaryToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :cloudinary, :string
  end
end
