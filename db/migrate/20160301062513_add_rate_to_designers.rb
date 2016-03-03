class AddRateToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :designer, :string
    add_column :designers, :shop_name, :string
  end
end
