class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :parent_id
      t.integer :sort_id

      t.timestamps
    end
  end
end
