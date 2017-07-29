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

ActiveRecord::Schema.define(version: 20170729181422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cakes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.string "shape"
    t.string "message"
    t.bigint "decoration_id"
    t.bigint "dough_id"
    t.bigint "filling_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decoration_id"], name: "index_cakes_on_decoration_id"
    t.index ["dough_id"], name: "index_cakes_on_dough_id"
    t.index ["filling_id"], name: "index_cakes_on_filling_id"
  end

  create_table "cakes_orders", id: false, force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "cake_id", null: false
  end

  create_table "decorations", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doughs", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extras", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extras_orders", id: false, force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "extra_id", null: false
  end

  create_table "fillings", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "address"
    t.float "cost"
    t.bigint "user_id"
    t.datetime "delivery_datetime"
    t.string "contact_name"
    t.integer "contact_telephone"
    t.string "contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cakes", "decorations"
  add_foreign_key "cakes", "doughs"
  add_foreign_key "cakes", "fillings"
  add_foreign_key "orders", "users"
end
