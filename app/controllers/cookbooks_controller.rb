class CookbooksController < ApplicationController
  def index
    @cookbooks= Cookbook.all
  end

  def new
    @user= current_user
    @cookbook = Cookbook.new
  end

  def create
    @user= current_user
    @cookbook = Cookbook.new(cookbook_params)
    if @cookbook.save
      join_cookbook(@user, @cookbook)
      redirect_to @cookbook
    else
      render :new
    end
  end

  def join_cookbook(user, cookbook)
    UserCookbook.create!(user_id: user.id, cookbook_id: cookbook.id)
  end

  def cookbook_params
    params.require(:cookbook).permit(:title, :creator_id)
  end

end
