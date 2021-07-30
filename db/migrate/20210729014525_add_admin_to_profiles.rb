class AddAdminToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :admin, :boolean, default: false
  end
end
