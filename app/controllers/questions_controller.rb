class QuestionsController < ApplicationController
  def index
    @questions = Paper.find(params[:paper_id]).questions
  end

  def new
    @paper = Paper.find(params[:paper_id])
  end

  def create
    redirect_to action: 'show', id: Paper.find(params[:paper_id]).questions.create(question_params).id
  end

  def show
    console
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question
  end

  private
  def question_params
    params.require(:question).permit(:title, :tag, :body, :answer, :paper_id)
  end

end
