ActiveRecord::Schema.define(version: 20160615080932) do
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "mailboxes", force: :cascade do |t|
    t.integer  "user_id"
    t.bigint   "uid"
    t.hstore   "parameters"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mailboxes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mailboxes", "users"
end
