class AddStyleidToLikes < ActiveRecord::Migration
  def change
     add_column :likes, :style_id, :integer
  end
end
