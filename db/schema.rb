ActiveRecord::Schema.define(version: 2019_09_30_012659) do
  
  enable_extension "plpgsql"

  create_table "clotters", force: :cascade do |t|
    t.text "content"
  end

end
