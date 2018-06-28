ActiveRecord::Schema.define(version: 2018_06_21_125918) do
  enable_extension "plpgsql"

  create_table "bucket_lists", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bucket_lists_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.time "start_time"
    t.time "end_time"
    t.date "start_date"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "min_age"
    t.integer "max_age"
    t.float "latitude"
    t.float "longitude"
    t.text "address"
    t.text "price"
    t.date "end_date"
    t.text "link"
    t.index ["place_id"], name: "index_events_on_place_id"
  end

  create_table "list_events", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "bucket_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bucket_list_id"], name: "index_list_events_on_bucket_list_id"
    t.index ["event_id"], name: "index_list_events_on_event_id"
  end

  create_table "list_places", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "bucket_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bucket_list_id"], name: "index_list_places_on_bucket_list_id"
    t.index ["place_id"], name: "index_list_places_on_place_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.text "address"
    t.boolean "indoor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "min_age"
    t.integer "max_age"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.text "link"
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
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bucket_lists", "users"
  add_foreign_key "events", "places"
  add_foreign_key "list_events", "bucket_lists"
  add_foreign_key "list_events", "events"
  add_foreign_key "list_places", "bucket_lists"
  add_foreign_key "list_places", "places"
end
