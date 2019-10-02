class AddTimestampToClotters < ActiveRecord::Migration[5.2]
  def change
    add_column :clotters, :datetime, :timestamp
  end
end
