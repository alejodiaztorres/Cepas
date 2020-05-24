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

ActiveRecord::Schema.define(version: 2020_05_24_200308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.boolean "available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains_wines", id: false, force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "strain_id", null: false
    t.index ["strain_id", "wine_id"], name: "index_strains_wines_on_strain_id_and_wine_id"
    t.index ["wine_id", "strain_id"], name: "index_strains_wines_on_wine_id_and_strain_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
