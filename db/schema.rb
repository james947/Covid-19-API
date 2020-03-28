# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_28_095251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_cases", force: :cascade do |t|
    t.integer "currently_infected_patients"
    t.integer "mild_condition"
    t.integer "serious_or_critical_condition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "latest", default: false
  end

  create_table "all_cases", force: :cascade do |t|
    t.integer "total_cases"
    t.integer "total_deaths"
    t.integer "total_recovered"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "latest", default: false
  end

  create_table "closed_cases", force: :cascade do |t|
    t.integer "cases_which_had_outcome"
    t.integer "recovered_or_discharged"
    t.integer "deaths"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "latest", default: false
  end

  create_table "countries_data", force: :cascade do |t|
    t.string "country_or_other"
    t.integer "total_cases"
    t.integer "new_cases"
    t.integer "total_deaths"
    t.integer "new_deaths"
    t.integer "total_recovered"
    t.integer "active_cases"
    t.integer "serious_or_critical"
    t.integer "total_cases_1m_pop"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "latest", default: false
    t.integer "total_deaths_1m_pop"
    t.integer "first_case"
  end

end
