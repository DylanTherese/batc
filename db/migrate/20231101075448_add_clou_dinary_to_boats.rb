class AddClouDinaryToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :cloudinary2, :string
  end
end
