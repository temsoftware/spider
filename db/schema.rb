# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 12) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["brand_id"], :name => "fk_cars_brands"

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gears", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options_vehicles", :force => true do |t|
    t.integer  "vehicle_id"
    t.integer  "option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "options_vehicles", ["option_id"], :name => "fk_options_vehicles_options"
  add_index "options_vehicles", ["vehicle_id"], :name => "fk_options_vehicles_vehicles"

  create_table "pictures", :force => true do |t|
    t.integer  "vehicle_id"
    t.string   "picture_file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_vehicles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                         :null => false
    t.string   "login",                        :null => false
    t.string   "pass",                         :null => false
    t.boolean  "active",     :default => true, :null => false
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["profile_id"], :name => "fk_users_profiles"

  create_table "vehicles", :force => true do |t|
    t.integer  "amount",          :limit => 10, :precision => 10, :scale => 0
    t.string   "note"
    t.datetime "year"
    t.datetime "model"
    t.integer  "doors"
    t.integer  "finale"
    t.string   "km"
    t.integer  "car_id"
    t.integer  "color_id"
    t.integer  "gear_id"
    t.integer  "fuel_id"
    t.integer  "type_vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicles", ["car_id"], :name => "fk_vehicles_cars"
  add_index "vehicles", ["color_id"], :name => "fk_vehicles_colors"
  add_index "vehicles", ["fuel_id"], :name => "fk_vehicles_fuels"
  add_index "vehicles", ["gear_id"], :name => "fk_vehicles_gears"
  add_index "vehicles", ["type_vehicle_id"], :name => "fk_vehicles_type_vehicles"

end
