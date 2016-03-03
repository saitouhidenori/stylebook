class AddRateToLikes < ActiveRecord::Migration
  def change
      add_column :likes, :user_id, :integer
      add_column :likes, :designer_id, :integer
  end
end
