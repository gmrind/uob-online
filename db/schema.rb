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

ActiveRecord::Schema.define(version: 20150617211007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examinations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.string   "annu_supp"
    t.string   "roll_num"
    t.string   "divis"
    t.string   "sub_pass"
    t.string   "boar_univ"
    t.integer  "reg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mercury_images", force: :cascade do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "article"
    t.date     "date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "regs", force: :cascade do |t|
    t.string   "sname"
    t.string   "fname"
    t.date     "dob"
    t.string   "n_y_reg"
    t.integer  "subject_id"
    t.string   "pre_reg"
    t.string   "board"
    t.string   "local_domicile"
    t.string   "cnic"
    t.string   "per_address"
    t.string   "pre_address"
    t.string   "challan"
    t.string   "amount"
    t.date     "date"
    t.integer  "year"
    t.string   "annual_supply"
    t.string   "roll_no"
    t.string   "division"
    t.string   "sub_pass"
    t.string   "board_university"
    t.integer  "examination_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "religion"
  end

  add_index "regs", ["examination_id"], name: "index_regs_on_examination_id", using: :btree
  add_index "regs", ["subject_id"], name: "index_regs_on_subject_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subs", force: :cascade do |t|
    t.integer  "reg_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "updates", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "regs", "examinations"
  add_foreign_key "regs", "subjects"
end
