class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :name, :null => false
      t.boolean :has_vc, :null => false
      t.boolean :has_projector, :null => false
      t.integer :capacity, :null => false

      t.references :location, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
