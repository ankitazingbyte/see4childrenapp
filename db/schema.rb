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

ActiveRecord::Schema.define(version: 20180228134123) do

  create_table "admin_ngos", force: :cascade do |t|
    t.string "name"
    t.string "no_of_children"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_reports", force: :cascade do |t|
    t.string "child_name"
    t.string "child_code"
    t.integer "donor_id"
    t.string "donation_month"
    t.date "date"
    t.string "paid"
    t.string "sent_by"
    t.integer "ngo_id"
    t.integer "notification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certificates", force: :cascade do |t|
    t.string "donar_name"
    t.string "donation_amount"
    t.string "sponsored_child_code"
    t.string "sponsored_child_name"
    t.string "month"
    t.date "issue_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "child_code"
    t.string "gender"
    t.string "image"
    t.date "dob"
    t.string "education"
    t.string "school"
    t.string "hobby"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_ngo_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "name"
    t.string "child_code"
    t.string "send_by"
    t.string "donor_code"
    t.integer "donar_paid"
    t.string "last_paid"
    t.string "reference"
    t.string "month"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "event_type"
    t.string "description"
    t.string "image"
    t.string "address"
    t.string "organizer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_ngo_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "no_of_children"
    t.string "no_of_staff"
    t.string "state"
    t.string "established"
    t.string "city"
    t.string "area"
    t.string "zip_code"
    t.string "director"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "ngo_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "child_name"
    t.string "ngo_name"
    t.integer "child_age"
    t.string "spend_money"
    t.string "month"
    t.string "date_of_issue"
    t.integer "notification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
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
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "no_of_children"
    t.string "no_of_staff"
    t.string "state"
    t.string "established"
    t.string "city"
    t.string "area"
    t.string "zip_code"
    t.string "director"
    t.string "image"
    t.string "token"
    t.string "password_digest"
    t.string "password_salt"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
