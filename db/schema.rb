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

ActiveRecord::Schema.define(version: 20171017130558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cakes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "size"
    t.string "message"
    t.integer "age"
    t.bigint "decoration_id"
    t.bigint "dough_id"
    t.bigint "filling_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["decoration_id"], name: "index_cakes_on_decoration_id"
    t.index ["dough_id"], name: "index_cakes_on_dough_id"
    t.index ["filling_id"], name: "index_cakes_on_filling_id"
    t.index ["order_id"], name: "index_cakes_on_order_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "contact_email"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.integer "contact_telephone"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_cakes", force: :cascade do |t|
    t.string "contact_email"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.integer "contact_telephone"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decoration_categories", force: :cascade do |t|
    t.bigint "decoration_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_decoration_categories_on_category_id"
    t.index ["decoration_id"], name: "index_decoration_categories_on_decoration_id"
  end

  create_table "decorations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "photo"
    t.float "minimum_size", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "address"
    t.bigint "user_id"
    t.bigint "order_id"
    t.date "delivery_date"
    t.integer "delivery_slot"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.integer "contact_telephone"
    t.string "contact_email"
    t.boolean "store_pickup", default: false, null: false
    t.boolean "done", default: false, null: false
    t.integer "nif"
    t.integer "zipcode"
    t.string "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cost_cents", default: 0, null: false
    t.index ["order_id"], name: "index_deliveries_on_order_id"
    t.index ["user_id"], name: "index_deliveries_on_user_id"
  end

  create_table "dough_fillings", force: :cascade do |t|
    t.bigint "dough_id"
    t.bigint "filling_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dough_id"], name: "index_dough_fillings_on_dough_id"
    t.index ["filling_id"], name: "index_dough_fillings_on_filling_id"
  end

  create_table "doughs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
  end

  create_table "featured_cakes", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fillings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
  end

  create_table "order_others", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "other_id"
    t.integer "quantity", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_others_on_order_id"
    t.index ["other_id"], name: "index_order_others_on_other_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "done", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "others", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "photo"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["order_id"], name: "index_others_on_order_id"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "provider"
    t.string "uid"
    t.string "picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cakes", "decorations"
  add_foreign_key "cakes", "doughs"
  add_foreign_key "cakes", "fillings"
  add_foreign_key "cakes", "orders"
  add_foreign_key "decoration_categories", "categories"
  add_foreign_key "decoration_categories", "decorations"
  add_foreign_key "deliveries", "orders"
  add_foreign_key "deliveries", "users"
  add_foreign_key "dough_fillings", "doughs"
  add_foreign_key "dough_fillings", "fillings"
  add_foreign_key "order_others", "orders"
  add_foreign_key "order_others", "others"
  add_foreign_key "orders", "users"
  add_foreign_key "others", "orders"
end
