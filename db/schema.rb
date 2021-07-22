# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_22_095757) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "apextransactions", force: :cascade do |t|
    t.string "description"
    t.datetime "time"
    t.integer "transaction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["transaction_id"], name: "index_apextransactions_on_transaction_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "sur_name"
    t.string "first_name"
    t.string "other_name"
    t.boolean "gender"
    t.string "relationship_status"
    t.integer "number_dependents"
    t.string "nationality"
    t.string "profession"
    t.string "nin"
    t.string "phone_number1"
    t.string "phone_number2"
    t.string "r_village"
    t.string "r_parish"
    t.string "r_county"
    t.string "r_district"
    t.string "work_place"
    t.string "work_location"
    t.string "kin_surname"
    t.string "kin_firstname"
    t.string "kin_relation"
    t.string "kin_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loans", force: :cascade do |t|
    t.string "doc_ref"
    t.integer "loan_amount"
    t.integer "interest_rate"
    t.integer "charges"
    t.integer "loan_period"
    t.string "payment_terms"
    t.string "loan_security"
    t.integer "security_valuation"
    t.string "loan_guarantor"
    t.string "guarantor_tel"
    t.string "guarantor_relation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "account_id"
    t.integer "client_id"
    t.index ["account_id"], name: "index_loans_on_account_id"
    t.index ["client_id"], name: "index_loans_on_client_id"
  end

  create_table "savings", force: :cascade do |t|
    t.boolean "status"
    t.integer "interest_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "form"
    t.string "category"
    t.string "doc_ref"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "loan_id"
    t.string "account_type"
    t.integer "account_id"
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["account_type"], name: "index_transactions_on_account_type"
    t.index ["loan_id"], name: "index_transactions_on_loan_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "apextransactions", "transactions"
end
