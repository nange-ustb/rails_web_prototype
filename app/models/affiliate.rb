# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: affiliates
#
#  name       :string(255)
#  code       :integer          primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Affiliate < ActiveRecord::Base
  attr_accessible :code, :name , :area_id , :area, :product_ids
  self.primary_key = 'code'

  has_many :administrator_affiliates#, :dependent => :destroy
  has_many :administrators , :through => :administrator_affiliates
end
