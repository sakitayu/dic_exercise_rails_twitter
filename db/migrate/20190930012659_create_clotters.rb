class CreateClotters < ActiveRecord::Migration[5.2]
  def change
    create_table :clotters do |t|
      t.text :content
    end
  end
end
