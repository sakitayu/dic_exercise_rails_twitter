class AddDateStamp < ActiveRecord::Migration[5.2]
  def change
    add_column :clotters, :timestamps, :datetime
  end
end
