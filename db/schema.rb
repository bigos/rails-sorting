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

ActiveRecord::Schema.define(version: 20151224182102) do

  create_table "custom_field_definitions", force: true do |t|
    t.string   "belongs_to_table"
    t.string   "name"
    t.string   "field_type"
    t.string   "default_string"
    t.string   "default_integer"
    t.string   "default_boolean"
    t.string   "default_text"
    t.string   "default_decimal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custom_fields", force: true do |t|
    t.string   "belongs_to_table"
    t.string   "table_record_id"
    t.string   "value_string"
    t.string   "value_integer"
    t.string   "value_boolean"
    t.string   "value_text"
    t.string   "value_decimal"
    t.string   "custom_field_definition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
