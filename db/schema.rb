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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160709043840) do

  create_table "answers", force: :cascade do |t|
    t.integer  "numberansw"
    t.string   "answers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
ActiveRecord::Schema.define(version: 20160710184959) do

  create_table "answer_x_clasifications", force: :cascade do |t|
    t.integer  "answers_id"
    t.integer  "clasifications_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "answer_x_clasifications", ["answers_id"], name: "index_answer_x_clasifications_on_answers_id"
  add_index "answer_x_clasifications", ["clasifications_id"], name: "index_answer_x_clasifications_on_clasifications_id"

  create_table "answer_x_types", force: :cascade do |t|
    t.integer  "answers_id"
    t.integer  "types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "answer_x_types", ["answers_id"], name: "index_answer_x_types_on_answers_id"
  add_index "answer_x_types", ["types_id"], name: "index_answer_x_types_on_types_id"

  create_table "answers", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

>>>>>>> c195409d16ffa83f81c6bcac215aeec06d0f8a89
  create_table "clasifications", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "sites_id"
    t.text     "SRC"
    t.string   "Section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["sites_id"], name: "index_photos_on_sites_id"

  create_table "scores", force: :cascade do |t|
    t.integer  "Star1"
    t.integer  "Star2"
    t.integer  "Star3"
    t.integer  "Star4"
    t.integer  "Star5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_x_clasifications", force: :cascade do |t|
    t.integer  "sites_id"
    t.integer  "clasifications_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "site_x_clasifications", ["clasifications_id"], name: "index_site_x_clasifications_on_clasifications_id"
  add_index "site_x_clasifications", ["sites_id"], name: "index_site_x_clasifications_on_sites_id"

  create_table "site_x_types", force: :cascade do |t|
    t.integer  "sites_id"
    t.integer  "types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "site_x_types", ["sites_id"], name: "index_site_x_types_on_sites_id"
  add_index "site_x_types", ["types_id"], name: "index_site_x_types_on_types_id"

  create_table "sites", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.integer  "scores_id"
    t.integer  "businessmans_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "TelNumber"
    t.string   "Municipality"
    t.string   "State"
    t.string   "Colony"
    t.integer  "OutdoorNumbe"
    t.integer  "IndoorNumbe"
  end

  add_index "sites", ["businessmans_id"], name: "index_sites_on_businessmans_id"
  add_index "sites", ["scores_id"], name: "index_sites_on_scores_id"

<<<<<<< HEAD
  create_table "surveys", force: :cascade do |t|
    t.string   "questions"
=======
  create_table "survey_x_answers", force: :cascade do |t|
    t.integer  "surveys_id"
    t.integer  "answers_id"
>>>>>>> c195409d16ffa83f81c6bcac215aeec06d0f8a89
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
  add_index "survey_x_answers", ["answers_id"], name: "index_survey_x_answers_on_answers_id"
  add_index "survey_x_answers", ["surveys_id"], name: "index_survey_x_answers_on_surveys_id"

  create_table "surveys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "Questions"
    t.string   "Type"
  end

  create_table "type_questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> c195409d16ffa83f81c6bcac215aeec06d0f8a89
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
