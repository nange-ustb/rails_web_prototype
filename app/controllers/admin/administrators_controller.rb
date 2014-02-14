# -*- encoding : utf-8 -*-
class Admin::AdministratorsController < Admin::ResourceController
  has_scope :search , :only => [:index] , :type => :hash
  #authorize_resource
  # inherit_resources

  private

  def attributes
    %w(user_name real_name affiliates is_admin)
  end
end
