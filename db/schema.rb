# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131018092652) do

  create_table "administrator_affiliates", :force => true do |t|
    t.integer  "administrator_id"
    t.integer  "affiliate_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "administrator_affiliates", ["administrator_id"], :name => "index_administrator_affiliates_on_administrator_id"
  add_index "administrator_affiliates", ["affiliate_id"], :name => "index_administrator_affiliates_on_affiliate_id"

  create_table "administrator_permissions", :force => true do |t|
    t.integer  "administrator_id"
    t.integer  "permission_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "administrator_permissions", ["administrator_id"], :name => "index_administrator_permissions_on_administrator_id"
  add_index "administrator_permissions", ["permission_id"], :name => "index_administrator_permissions_on_permission_id"

  create_table "administrators", :force => true do |t|
    t.string   "user_name",                             :null => false
    t.string   "real_name"
    t.string   "nick_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.boolean  "is_admin",           :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "administrators", ["user_name"], :name => "index_administrators_on_user_name"

  create_table "affiliates", :id => false, :force => true do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "action",     :limit => 50, :null => false
    t.string   "subject",    :limit => 50, :null => false
    t.string   "desc",       :limit => 50, :null => false
    t.string   "model_name", :limit => 50, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "permission_events", :force => true do |t|
    t.integer  "permission_id"
    t.integer  "event_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "permission_events", ["permission_id", "event_id"], :name => "index_permission_events_on_permission_id_and_event_id"

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.integer  "administrator_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "permissions", ["administrator_id"], :name => "index_permissions_on_administrator_id"
  add_index "permissions", ["name"], :name => "index_permissions_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "loginname"
    t.string   "real_name"
    t.string   "nickname"
    t.string   "mobile_phone"
    t.integer  "global_id",              :default => 0,  :null => false
    t.datetime "deleted_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token"
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["global_id"], :name => "index_users_on_global_id"
  add_index "users", ["loginname"], :name => "index_users_on_loginname"
  add_index "users", ["mobile_phone"], :name => "index_users_on_mobile_phone"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token"

end
