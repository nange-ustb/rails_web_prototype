# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: administrator_permissions
#
#  id               :integer          not null, primary key
#  administrator_id :integer
#  permission_id    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AdministratorPermission < ActiveRecord::Base
  attr_accessible  :administrator_id , :permission_id
  belongs_to :administrator
  belongs_to :permission
end
