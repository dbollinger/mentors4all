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

ActiveRecord::Schema.define(version: 20160514193642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.string   "day"
    t.string   "time"
    t.string   "assistance_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cs_subjects", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educator_availabilities", force: :cascade do |t|
    t.integer  "educator_id"
    t.integer  "availability_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "educator_grade_levels", force: :cascade do |t|
    t.integer  "educator_id"
    t.string   "grade_level_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "educator_subjects", force: :cascade do |t|
    t.integer  "educator_id"
    t.integer  "cs_subject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "educators", force: :cascade do |t|
    t.string   "school"
    t.text     "profile_text"
    t.text     "additional_comments"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "grade_levels", force: :cascade do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentor_availabilities", force: :cascade do |t|
    t.integer  "mentor_id"
    t.integer  "availability_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mentor_contacts", force: :cascade do |t|
    t.integer  "mentor_id"
    t.integer  "educator_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mentor_grade_levels", force: :cascade do |t|
    t.integer  "mentor_id"
    t.string   "grade_level_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mentor_subjects", force: :cascade do |t|
    t.integer  "mentor_id"
    t.integer  "cs_subject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "location"
    t.string   "employment_status"
    t.string   "employment_location"
    t.text     "prior_experience"
    t.text     "courses_taken"
    t.text     "interest_in_mentoring"
    t.text     "example_explanation"
    t.text     "cs_expertise"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "currently_available",   default: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "first_name"
    t.string   "last_name"
  end

end
