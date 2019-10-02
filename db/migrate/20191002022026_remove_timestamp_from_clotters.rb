class RemoveTimestampFromClotters < ActiveRecord::Migration[5.2]
  def change
    remove_column :clotters, :timestamps, :datetime
  end
end
