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
    Question.find(params[:id]).update(question_params)
    redirect_to url_for(paper_question_url)
  end

  private
  def question_params
    params.require(:question).permit(:title, :tag, :body, :answer, :paper_id)
  end

end
