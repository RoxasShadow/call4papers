class Admin::AdminController < ApplicationController
  before_filter :allow_staff_only

  def allow_staff_only
    redirect_to root_path unless current_user.staff?
  end
end