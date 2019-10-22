class AddRoleToNotice < ActiveRecord::Migration[6.0]
  def change
    add_column :notices, :role, :string
  end
end
