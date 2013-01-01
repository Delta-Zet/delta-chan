class Admin::DashboardController < ApplicationController
  layout 'admin'

  before_filter :check_auth

  def index
  end
end
