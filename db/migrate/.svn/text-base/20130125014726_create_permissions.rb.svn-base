# -*- encoding : utf-8 -*-
class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name
      t.references :administrator

      t.timestamps
    end

    add_index :permissions, :name
  	add_index :permissions, :administrator_id
  end
end
