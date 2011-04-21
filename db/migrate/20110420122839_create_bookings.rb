class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.datetime :booked_at, :null => false
      t.datetime :booked_from, :null => false
      t.datetime :booked_to, :null => false
      t.boolean :is_vc, :null => false
      t.integer :expected_attendees, :null => false
      t.string :notes

      t.integer :updated_by_id
      t.integer :created_by_id, :null => false
      t.references :location, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
