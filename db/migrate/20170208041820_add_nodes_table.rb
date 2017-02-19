class AddNodesTable < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :parent_id
      t.string :name
      t.text :text
      t.string :img_url

      t.timestamps
    end
  end
end
