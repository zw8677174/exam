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
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to paper_question_url(paper_id: @question.paper_id, id: @question.id)
  end

  private
  def question_params
    params.require(:question).permit(:content)
  end

end
