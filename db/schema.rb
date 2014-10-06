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

ActiveRecord::Schema.define(version: 20141006202036) do

  create_table "faculties", force: true do |t|
    t.integer  "number"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.integer  "cource"
    t.text     "name"
    t.integer  "faculty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["faculty_id"], name: "index_groups_on_faculty_id", using: :btree

  create_table "lessons", force: true do |t|
    t.text     "name"
    t.text     "teacher"
    t.integer  "day"
    t.text     "start"
    t.text     "end"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["group_id"], name: "index_lessons_on_group_id", using: :btree

end
