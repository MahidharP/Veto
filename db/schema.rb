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

ActiveRecord::Schema.define(version: 20161007083513) do

  create_table "abilities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "acheivements", force: :cascade do |t|
    t.integer  "institution_id"
    t.string   "name"
    t.text     "details"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "acheivements", ["institution_id"], name: "index_acheivements_on_institution_id"

  create_table "cities", force: :cascade do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "phone_number"
    t.integer  "institution_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "contacts", ["institution_id"], name: "index_contacts_on_institution_id"

  create_table "events", force: :cascade do |t|
    t.integer  "institution_id"
    t.string   "name"
    t.date     "event_date"
    t.text     "details"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "events", ["institution_id"], name: "index_events_on_institution_id"

  create_table "extra_curricular_activities", force: :cascade do |t|
    t.integer  "institution_id"
    t.string   "name"
    t.text     "details"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "extra_curricular_activities", ["institution_id"], name: "index_extra_curricular_activities_on_institution_id"

  create_table "facilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "student_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "dob"
    t.string   "class"
    t.string   "nationality"
    t.string   "gender"
    t.string   "religion"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "father_designation"
    t.string   "email"
    t.float    "income"
    t.string   "phone_number"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "telephone"
  end

  create_table "highlights", force: :cascade do |t|
    t.integer  "institution_id"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "highlights", ["institution_id"], name: "index_highlights_on_institution_id"

  create_table "institution_facilities", force: :cascade do |t|
    t.integer  "institution_id"
    t.integer  "facility_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "institution_facilities", ["facility_id"], name: "index_institution_facilities_on_facility_id"
  add_index "institution_facilities", ["institution_id"], name: "index_institution_facilities_on_institution_id"

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.string   "email"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "institutions", ["city_id"], name: "index_institutions_on_city_id"
  add_index "institutions", ["location_id"], name: "index_institutions_on_location_id"
  add_index "institutions", ["state_id"], name: "index_institutions_on_state_id"

  create_table "locations", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["city_id"], name: "index_locations_on_city_id"

  create_table "myaccounts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "student_name"
    t.date     "dob"
    t.string   "class"
    t.string   "gender"
    t.string   "nationality"
    t.string   "religion"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "father_designation"
    t.string   "email"
    t.float    "income"
    t.string   "phone_number"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "telephone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "myaccounts", ["user_id"], name: "index_myaccounts_on_user_id"

  create_table "mydata", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "user"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "myforms", force: :cascade do |t|
    t.integer  "user"
    t.string   "student_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "myforms", ["user"], name: "index_myforms_on_user"

  create_table "myprofiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "student_name"
    t.date     "dob"
    t.string   "class"
    t.string   "gender"
    t.string   "nationality"
    t.string   "religion"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "father_designation"
    t.string   "email"
    t.float    "income"
    t.string   "phone_number"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "telephone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "myprofiles", ["user_id"], name: "index_myprofiles_on_user_id"

  create_table "outlets", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "outlets", ["user_id"], name: "index_outlets_on_user_id"

  create_table "outlines", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "student_name"
    t.date     "dob"
    t.string   "class"
    t.string   "gender"
    t.string   "nationality"
    t.string   "religion"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "father_designation"
    t.string   "email"
    t.float    "income"
    t.string   "phone_number"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "telephone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "outlines", ["user_id"], name: "index_outlines_on_user_id"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "student"
    t.date     "dob"
    t.string   "class"
    t.string   "gender"
    t.string   "nationality"
    t.string   "religion"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "father_designation"
    t.string   "email"
    t.float    "income"
    t.string   "phone_number"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "telephone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "qualifications", force: :cascade do |t|
    t.string   "name"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "qualifications", ["profile_id"], name: "index_qualifications_on_profile_id"

  create_table "religions", force: :cascade do |t|
    t.string   "name"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "religions", ["profile_id"], name: "index_religions_on_profile_id"

  create_table "results", force: :cascade do |t|
    t.integer  "institution_id"
    t.integer  "students"
    t.float    "scored"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "results", ["institution_id"], name: "index_results_on_institution_id"

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "role",                   default: "user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
