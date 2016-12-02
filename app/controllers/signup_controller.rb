class SignupController < ApplicationController
  def supervisor
  end

  def requester
  end

  def resource_name
    :requester
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
