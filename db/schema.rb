# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110420122839) do

  create_table "bookings", :force => true do |t|
    t.datetime "booked_at",          :null => false
    t.datetime "booked_from",        :null => false
    t.datetime "booked_to",          :null => false
    t.boolean  "is_vc",              :null => false
    t.integer  "expected_attendees", :null => false
    t.string   "notes"
    t.integer  "updated_by_id"
    t.integer  "created_by_id",      :null => false
    t.integer  "location_id",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "name",          :null => false
    t.boolean  "has_vc",        :null => false
    t.boolean  "has_projector", :null => false
    t.integer  "capacity",      :null => false
    t.integer  "location_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
