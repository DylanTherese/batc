class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :model
      t.string :category
      t.string :location
      t.integer :max_guests
      t.integer :beds
      t.float :length
      t.integer :engine_power
      t.integer :crew_number

      t.timestamps
    end
  end
end
