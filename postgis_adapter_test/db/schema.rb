# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140528132511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "areas", primary_key: "gid", force: true do |t|
    t.decimal "area"
    t.decimal "perimeter"
    t.integer "h22ka07_"
    t.integer "h22ka07_id"
    t.string  "ken",        limit: 2
    t.string  "city",       limit: 3
    t.string  "ken_name",   limit: 12
    t.string  "sityo_name", limit: 22
    t.string  "gst_name",   limit: 14
    t.string  "css_name",   limit: 14
    t.integer "hcode",      limit: 2
    t.string  "kihon1",     limit: 4
    t.string  "dummy1",     limit: 1
    t.string  "kihon2",     limit: 2
    t.string  "keycode1",   limit: 9
    t.string  "keycode2",   limit: 9
    t.string  "area_max_f", limit: 1
    t.string  "kigo_d",     limit: 2
    t.string  "n_ken",      limit: 2
    t.string  "n_city",     limit: 3
    t.integer "n_c1",       limit: 2
    t.string  "kigo_e",     limit: 3
    t.string  "kigo_i",     limit: 1
    t.integer "tate",       limit: 2
    t.integer "dir"
    t.integer "hight"
    t.integer "jikaku"
    t.integer "nmoji",      limit: 2
    t.string  "moji",       limit: 96
    t.integer "seq_no2"
    t.integer "ksum",       limit: 2
    t.integer "csum",       limit: 2
    t.decimal "jinko",                                                    precision: 10, scale: 0
    t.decimal "setai",                                                    precision: 10, scale: 0
    t.decimal "x_code"
    t.decimal "y_code"
    t.string  "kcode1",     limit: 7
    t.string  "key_code",   limit: 11
    t.integer "h22ka08_"
    t.integer "h22ka08_id"
    t.integer "h22ka09_"
    t.integer "h22ka09_id"
    t.integer "h22ka10_"
    t.integer "h22ka10_id"
    t.integer "h22ka11_"
    t.integer "h22ka11_id"
    t.integer "h22ka12_"
    t.integer "h22ka12_id"
    t.integer "h22ka13_"
    t.integer "h22ka13_id"
    t.integer "h22ka14_"
    t.integer "h22ka14_id"
    t.spatial "geom",       limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "samples", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "latlon",     limit: {:srid=>0, :type=>"point"}
    t.spatial  "shape",      limit: {:srid=>0, :type=>"multi_polygon"}
  end

end
