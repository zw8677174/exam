class PapersController < ApplicationController

  def index

  end

  def create
    @paper = Paper.new(paper_params)
    @paper.user_id = User.find(params[:user_id]).id
    @paper.save
    redirect_to user_paper_url(:id=>params[:user_id])
  end

  def new
    @user = User.find(params[:user_id])
  end

  def show
    @paper = Paper.find(params[:id])
  end

  private
    def paper_params
      params.require(:paper).permit(:name, :title, :description)
    end
end
