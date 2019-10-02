class AddTimestampToClotters2 < ActiveRecord::Migration[5.2]
  def change
    add_column :clotters, :created_at, :datetime
  end
end
