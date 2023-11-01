class AddCloudiNaryToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :cloudinary3, :string
  end
end
