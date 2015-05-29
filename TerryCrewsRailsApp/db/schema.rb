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

ActiveRecord::Schema.define(version: 20150529045337) do

  create_table "exercise_sets", force: :cascade do |t|
    t.integer  "target_reps"
    t.integer  "achieved_reps"
    t.float    "weight"
    t.integer  "rest_period_seconds"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_resistance"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string   "unit_preference"
    t.boolean  "is_public"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "routines", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_weights", force: :cascade do |t|
    t.float    "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "birthday"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.text     "notes"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
