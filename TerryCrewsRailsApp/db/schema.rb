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

ActiveRecord::Schema.define(version: 20150926161907) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_resistance"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "exercise_set_id"
  end

  add_index "exercises", ["exercise_set_id"], name: "index_exercises_on_exercise_set_id"
  add_index "exercises", ["user_id"], name: "index_exercises_on_user_id"

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string   "unit_preference"
    t.boolean  "is_public"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  add_index "preferences", ["user_id"], name: "index_preferences_on_user_id"

  create_table "routines", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "workout_id"
  end

  add_index "routines", ["user_id"], name: "index_routines_on_user_id"
  add_index "routines", ["workout_id"], name: "index_routines_on_workout_id"

  create_table "set_data", force: :cascade do |t|
    t.integer  "target_reps"
    t.integer  "achieved_reps"
    t.float    "weight"
    t.integer  "rest_period_seconds"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "routine_id"
    t.integer  "workout_id"
  end

  add_index "set_data", ["routine_id"], name: "index_set_data_on_routine_id"
  add_index "set_data", ["user_id"], name: "index_set_data_on_user_id"
  add_index "set_data", ["workout_id"], name: "index_set_data_on_workout_id"

  create_table "user_weights", force: :cascade do |t|
    t.float    "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "user_weights", ["user_id"], name: "index_user_weights_on_user_id"

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
    t.integer  "user_id"
  end

  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id"

end
