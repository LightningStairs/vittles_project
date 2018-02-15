class UsersController < ApplicationController
  def show
    @user= current_user
    @cookbooks_subscribed= @user.cookbooks
    @cookbooks_created= Cookbook.where(creator: @user)
  end

end
