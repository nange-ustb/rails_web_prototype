# -*- encoding : utf-8 -*-
class CreatePermissionEvents < ActiveRecord::Migration
  def change
    create_table :permission_events do |t|
      t.references :permission
      t.references :event

      t.timestamps
    end

    add_index :permission_events, [:permission_id,:event_id]
  end
end
