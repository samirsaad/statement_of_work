# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100303185655) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_contacts", :force => true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engine_yard_contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statement_of_works", :force => true do |t|
    t.integer  "engine_yard_contact_id"
    t.integer  "company_contact_id"
    t.integer  "company_id"
    t.string   "title"
    t.string   "slug"
    t.text     "scope"
    t.float    "no_hours"
    t.float    "est_fee"
    t.text     "add_terms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
