class AddRateStyleToStyles < ActiveRecord::Migration
  def change
    remove_column :styles, :designer, :string
    remove_column :styles, :shop_name, :string
  end
end
