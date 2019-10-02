class RemoveDatetimeFromClotters < ActiveRecord::Migration[5.2]
  def change
    remove_column :clotters, :datetime, :timestamp
  end
end
