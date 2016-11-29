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

ActiveRecord::Schema.define(version: 20161128195424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer  "application_number"
    t.string   "conference_name"
    t.date     "conference_date"
    t.string   "conference_location"
    t.boolean  "status"
    t.decimal  "registration_cost"
    t.decimal  "transportation_cost"
    t.decimal  "accomodation_cost"
    t.decimal  "meals_cost"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.string   "application_recommendation"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "requesters", force: :cascade do |t|
    t.integer  "student_number"
    t.integer  "bank_account_number"
    t.string   "program_of_study"
    t.string   "thesis_topic"
    t.integer  "session_number"
    t.string   "supervisor"
    t.string   "academic_unit"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.integer  "employee_number"
    t.integer  "grant_account_number"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "type"
    t.string   "given_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
