# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:email => "test@roche.com", :password => "test", :password_confirmation => "test")
loc_war = Location.create(:name => "Warsaw")
loc_poz = Location.create(:name => "Poznan")
Room.create(:name => "100", :has_vc => false, :has_projector => false, :capacity => 5, :location => loc_war)
Room.create(:name => "101", :has_vc => false, :has_projector => true, :capacity => 10, :location => loc_war)
Room.create(:name => "200", :has_vc => true, :has_projector => false, :capacity => 5, :location => loc_war)
Room.create(:name => "201", :has_vc => true, :has_projector => true, :capacity => 10, :location => loc_war)
Room.create(:name => "600", :has_vc => false, :has_projector => false, :capacity => 5, :location => loc_poz)
Room.create(:name => "601", :has_vc => false, :has_projector => true, :capacity => 10, :location => loc_poz)
Room.create(:name => "700", :has_vc => true, :has_projector => false, :capacity => 5, :location => loc_poz)
Room.create(:name => "701", :has_vc => true, :has_projector => true, :capacity => 10, :location => loc_poz)