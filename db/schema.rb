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

ActiveRecord::Schema.define(version: 20141211021157) do

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_assignments", force: true do |t|
    t.integer  "task_id"
    t.integer  "user_assigned_id"
    t.date     "date_assigned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "declined"
    t.text     "declined_reason"
  end

  create_table "task_responses", force: true do |t|
    t.integer  "task_assignment_id"
    t.date     "date_completed"
    t.boolean  "declined"
    t.text     "declined_reason"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.boolean  "pool"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "phonenumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
