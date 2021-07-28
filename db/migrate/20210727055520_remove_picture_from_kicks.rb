class RemovePictureFromKicks < ActiveRecord::Migration[6.1]
  def change
    remove_column :kicks, :picture, :string
  end
end
