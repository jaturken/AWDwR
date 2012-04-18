class AddRoleToUsers < ActiveRecord::Migration
  def up
    add_column :users, :role, :string, default: "user"

  end

  def down
  	delete_column :users, :role
  end
end
