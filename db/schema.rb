# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_21_190223) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "seasons", ["spring", "summer", "fall", "winter"]
  create_enum "statuses", ["draft", "in_progress", "done"]

  create_table "trips", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "budget_min", precision: 10, scale: 2, null: false
    t.decimal "budget_max", precision: 10, scale: 2, null: false
    t.integer "max_duration", null: false
    t.enum "preferred_season", null: false, enum_type: "seasons"
    t.enum "status", null: false, enum_type: "statuses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
