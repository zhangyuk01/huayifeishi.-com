class AddLogoToSorts < ActiveRecord::Migration
  def change
    add_column :sorts, :logo, :string
  end
end
