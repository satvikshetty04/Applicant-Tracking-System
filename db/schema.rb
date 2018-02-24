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

ActiveRecord::Schema.define(version: 20180224013850) do

  create_table "applications", force: :cascade do |t|
    t.integer "user_id"
    t.string "current_company"
    t.string "linkedin_url"
    t.string "portfolio_url"
    t.text "add_info"
    t.string "gender"
    t.string "race"
    t.string "veteran"
    t.string "disability"
    t.string "resume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "jobs_id"
    t.integer "job_id"
    t.index ["jobs_id"], name: "index_applications_on_jobs_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "headquarters"
    t.string "size"
    t.date "founded"
    t.string "industry"
    t.integer "revenue"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "company_id"
    t.text "job_description"
    t.string "employment_type"
    t.text "responsibilities"
    t.text "requirements"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_applicant"
    t.boolean "is_recruiter"
    t.string "fname"
    t.string "lname"
    t.boolean "is_admin"
    t.string "phone_no"
    t.integer "companies_id"
    t.integer "company_id"
    t.index ["companies_id"], name: "index_users_on_companies_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
