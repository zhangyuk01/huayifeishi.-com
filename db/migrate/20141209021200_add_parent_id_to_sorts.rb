class AddParentIdToSorts < ActiveRecord::Migration
  def change
    add_column :sorts, :parent_id, :integer
  end
end
