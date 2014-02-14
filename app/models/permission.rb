# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: permissions
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  administrator_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Permission < ActiveRecord::Base
  validates :name,:presence => true, :allow_blank => false
  attr_accessible  :name,:permission_events_attributes 

  has_many :permission_events , :dependent => :destroy
  has_many :events  , :through => :permission_events

  has_many :administrator_permissions , :dependent => :destroy
  has_many :administrators  , :through => :administrator_permissions
  
  accepts_nested_attributes_for :permission_events , :allow_destroy => true
end
