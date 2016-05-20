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

ActiveRecord::Schema.define(version: 20160212125138) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", limit: 4,   null: false
    t.string   "body",        limit: 255, null: false
    t.string   "note",        limit: 255, null: false
    t.string   "profile",     limit: 255, null: false
    t.string   "result",      limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "subject",    limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_users", force: :cascade do |t|
    t.string   "display",     limit: 255, null: false
    t.integer  "user_id",     limit: 4,   null: false
    t.integer  "category_id", limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_users", force: :cascade do |t|
    t.integer  "group_id",   limit: 4, null: false
    t.integer  "user_id",    limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "tenant_id",  limit: 4,   null: false
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "category_id", limit: 4,   null: false
    t.string   "body",        limit: 255, null: false
    t.string   "profile",     limit: 255, null: false
    t.string   "form",        limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "user_id",     limit: 4, null: false
    t.integer  "category_id", limit: 4, null: false
    t.integer  "question",    limit: 4, null: false
    t.integer  "score",       limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "account",    limit: 255,                 null: false
    t.string   "password",   limit: 255
    t.boolean  "admin",      limit: 1,   default: false, null: false
    t.boolean  "creator",    limit: 1
    t.string   "email",      limit: 255,                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
