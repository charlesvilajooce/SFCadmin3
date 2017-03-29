class AdminController < ApplicationController
  def index
    @users = User.count
  end
end
