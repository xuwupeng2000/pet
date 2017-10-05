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

ActiveRecord::Schema.define(version: 20171005022537) do

  create_table "pages", force: :cascade do |t|
    t.string "url", null: false
    t.string "status_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status_code"], name: "index_pages_on_status_code"
    t.index ["url"], name: "index_pages_on_url"
  end

  create_table "tags", force: :cascade do |t|
    t.integer "page_id"
    t.string "tag_type"
    t.text "tag_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_tags_on_page_id"
    t.index ["tag_type"], name: "index_tags_on_tag_type"
  end

end
