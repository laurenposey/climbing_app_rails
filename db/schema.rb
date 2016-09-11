ActiveRecord::Schema.define(version: 20160910224048) do

  enable_extension "plpgsql"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
