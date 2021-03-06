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

ActiveRecord::Schema.define(version: 20170623094557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.string "pic_url"
    t.string "link_url"
    t.string "description"
    t.string "difficulty"
    t.bigint "subtopic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author"
    t.index ["subtopic_id"], name: "index_contents_on_subtopic_id"
  end

  create_table "subtopics", force: :cascade do |t|
    t.string "name"
    t.string "pic_url"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_subtopics_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.string "pic_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contents", "subtopics"
  add_foreign_key "subtopics", "topics"
end
