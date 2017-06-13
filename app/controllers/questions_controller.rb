class QuestionsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = params[:user_id]
    @question.save
    redirect_to user_question_url(:id=>@question.id)
  end

  def show
    @question = Question.find(params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:title, :tag, :body, :answer)
    end
end
