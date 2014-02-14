# -*- encoding : utf-8 -*-
class CreateAdministratorPermissions < ActiveRecord::Migration
  def change
    create_table :administrator_permissions do |t|
      t.references :administrator
      t.references :permission

      t.timestamps
    end
    add_index :administrator_permissions, :permission_id
    add_index :administrator_permissions, :administrator_id
  end
end
