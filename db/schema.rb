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

ActiveRecord::Schema.define(version: 20170407150849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contests", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "start",      null: false
    t.integer  "duration",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contests_problems", id: false, force: :cascade do |t|
    t.integer "problem_id"
    t.integer "contest_id"
    t.index ["contest_id"], name: "index_contests_problems_on_contest_id", using: :btree
    t.index ["problem_id"], name: "index_contests_problems_on_problem_id", using: :btree
  end

  create_table "problems", force: :cascade do |t|
    t.string   "name",               null: false
    t.text     "description",        null: false
    t.text     "input_description",  null: false
    t.text     "output_description", null: false
    t.text     "note"
    t.integer  "time_limit",         null: false
    t.integer  "memory_limit",       null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "verdict"
    t.string   "language"
    t.integer  "execution_time"
    t.text     "code"
    t.integer  "user_id"
    t.integer  "problem_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["problem_id"], name: "index_submissions_on_problem_id", using: :btree
    t.index ["user_id"], name: "index_submissions_on_user_id", using: :btree
  end

  create_table "test_cases", force: :cascade do |t|
    t.text     "input",       null: false
    t.text     "output",      null: false
    t.integer  "problems_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["problems_id"], name: "index_test_cases_on_problems_id", using: :btree
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "test_cases", "problems", column: "problems_id"
end
