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

ActiveRecord::Schema.define(version: 20170621194444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commands", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_steps", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "step_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exercise_steps", ["exercise_id"], name: "index_exercise_steps_on_exercise_id", using: :btree
  add_index "exercise_steps", ["step_id"], name: "index_exercise_steps_on_step_id", using: :btree

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "difficulty"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "step_commands", force: :cascade do |t|
    t.integer  "step_id"
    t.integer  "command_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "step_commands", ["command_id"], name: "index_step_commands_on_command_id", using: :btree
  add_index "step_commands", ["step_id"], name: "index_step_commands_on_step_id", using: :btree

  create_table "steps", force: :cascade do |t|
    t.string   "instruction"
    t.string   "answer"
    t.string   "correct_response"
    t.string   "error_response"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
