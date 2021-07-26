class CreateKicks < ActiveRecord::Migration[6.1]
  def change
    create_table :kicks do |t|
      t.string :tittle
      t.text :description
      t.float :price
      t.string :brand
      t.string :condition
      t.string :picture
      t.integer :buyer_id
      t.integer :seller_id
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
