class PapersController < ApplicationController
  def index
    @papers = Paper.all
  end

  def create
    @paper = Paper.new(paper_params)
    @paper.save
    redirect_to @paper
  end

  def new
    @paper = Paper.new
  end

  def show
    @paper = Paper.find(params[:id])
    @questions = @paper.questions
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])
    @paper.update(paper_params)
    redirect_to @paper
  end

  private
  def paper_params
    params.require(:paper).permit(:name, :title, :description)
  end
end
