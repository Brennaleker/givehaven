class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :project_id
      t.string :title
      t.string :amazon_id
      t.string :url
      t.integer :quantity
      t.float :price
      t.float :total_cost

      t.timestamps null: false
    end
  end
end
