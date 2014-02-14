# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


Administrator.find_or_create_by_user_name(:user_name => 'qiwl', :real_name => '齐文龙',:is_admin=>true)
Administrator.find_or_create_by_user_name(:user_name => 'wanggc', :real_name => '王国超',:is_admin=>true)
Administrator.find_or_create_by_user_name(:user_name => 'duhw', :real_name => '杜宏伟',:is_admin=>true)
