# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  loginname              :string(255)
#  real_name              :string(255)
#  nickname               :string(255)
#  mobile_phone           :string(255)
#  global_id              :integer          default(0), not null
#  deleted_at             :datetime
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default(0)
#  unlock_token           :string(255)
#  locked_at              :datetime
#  authentication_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

 
class User < ActiveRecord::Base
  extend Enumerize
  enumerize :gender, in:[:true, :false], default: :true
  enumerize :from, in:[:sso, :qq,:shop], default: :sso,scope: true
  devise :cas_authenticatable, :registerable, :recoverable, :trackable
  attr_accessible :email, :password, :password_confirmation, :loginname, :global_id, :mobile_phone,:nickname,:agreeable,
                  :gender,:account_type,:addition,:code,:date_of_birth,:real_name,:address,:dlzzd

  def cas_extra_attributes=(extra_attributes)
    self.from_json extra_attributes.to_json
  end
end
