class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.integer :designer_id
      t.text :image
      t.string :designer
      t.string :shop_name
      t.timestamps
    end
  end
end
