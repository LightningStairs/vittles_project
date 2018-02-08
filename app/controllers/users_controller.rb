class UsersController < ApplicationController
  def show
    @user= current_user
    @cookbooks= @user.cookbooks
  end

end
