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

ActiveRecord::Schema.define(version: 20160618235414) do

  create_table "activities", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.text     "Ubication"
    t.integer  "scores_id"
    t.integer  "businessmans_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "activities", ["businessmans_id"], name: "index_activities_on_businessmans_id"
  add_index "activities", ["scores_id"], name: "index_activities_on_scores_id"

  create_table "activity_x_clasification_types", force: :cascade do |t|
    t.integer  "activities_id"
    t.integer  "clasifications_id"
    t.integer  "types_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "activity_x_clasification_types", ["activities_id"], name: "index_activity_x_clasification_types_on_activities_id"
  add_index "activity_x_clasification_types", ["clasifications_id"], name: "index_activity_x_clasification_types_on_clasifications_id"
  add_index "activity_x_clasification_types", ["types_id"], name: "index_activity_x_clasification_types_on_types_id"

  create_table "activity_x_photos", force: :cascade do |t|
    t.integer  "activities_id"
    t.text     "SRC"
    t.string   "Section"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "activity_x_photos", ["activities_id"], name: "index_activity_x_photos_on_activities_id"

  create_table "clasifications", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "evening_entertainment_x_photos", force: :cascade do |t|
    t.integer  "evening_entertainments_id"
    t.text     "SRC"
    t.string   "Section"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "evening_entertainment_x_photos", ["evening_entertainments_id"], name: "idevening_entertainments"

  create_table "evening_entertainment_xcts", force: :cascade do |t|
    t.integer  "evening_entertainments_id"
    t.integer  "clasifications_id"
    t.integer  "types_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "evening_entertainment_xcts", ["clasifications_id"], name: "index_evening_entertainment_xcts_on_clasifications_id"
  add_index "evening_entertainment_xcts", ["types_id"], name: "index_evening_entertainment_xcts_on_types_id"

  create_table "evening_entertainments", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.text     "Ubication"
    t.integer  "scores_id"
    t.integer  "businessmans_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "evening_entertainments", ["businessmans_id"], name: "index_evening_entertainments_on_businessmans_id"
  add_index "evening_entertainments", ["scores_id"], name: "index_evening_entertainments_on_scores_id"

  create_table "restaurant_x_clasification_types", force: :cascade do |t|
    t.integer  "restaurants_id"
    t.integer  "clasifications_id"
    t.integer  "types_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "restaurant_x_clasification_types", ["clasifications_id"], name: "index_restaurant_x_clasification_types_on_clasifications_id"
  add_index "restaurant_x_clasification_types", ["restaurants_id"], name: "index_restaurant_x_clasification_types_on_restaurants_id"
  add_index "restaurant_x_clasification_types", ["types_id"], name: "index_restaurant_x_clasification_types_on_types_id"

  create_table "restaurant_x_photos", force: :cascade do |t|
    t.integer  "restaurants_id"
    t.text     "SRC"
    t.string   "Section"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "restaurant_x_photos", ["restaurants_id"], name: "index_restaurant_x_photos_on_restaurants_id"

  create_table "restaurants", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.text     "Ubication"
    t.integer  "scores_id"
    t.integer  "businessmans_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "restaurants", ["businessmans_id"], name: "index_restaurants_on_businessmans_id"
  add_index "restaurants", ["scores_id"], name: "index_restaurants_on_scores_id"

  create_table "scores", force: :cascade do |t|
    t.integer  "Star1"
    t.integer  "Star2"
    t.integer  "Star3"
    t.integer  "Star4"
    t.integer  "Star5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
