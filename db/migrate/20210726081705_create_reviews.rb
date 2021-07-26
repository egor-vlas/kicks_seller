class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :seller_id
      t.integer :buyer_id
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
