ActiveRecord::Schema.define(version: 2019_10_02_023857) do
  
  enable_extension "plpgsql"

  create_table "clotters", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at"
  end

end
