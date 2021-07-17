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

ActiveRecord::Schema.define(version: 2021_07_16_102959) do

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
    t.string "account"
    t.string "doc_ref"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
