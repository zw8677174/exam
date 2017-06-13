class PapersController < ApplicationController

  def index

  end

  def create
  end

  def new
    @user = User.find(params[:user_id])
  end

  def show

  end

end
