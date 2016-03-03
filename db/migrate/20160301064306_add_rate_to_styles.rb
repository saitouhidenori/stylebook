class AddRateToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :likes_count, :integer, default: 0
  end
end
