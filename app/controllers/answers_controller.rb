class AnswersController < ApplicationController
	def new
    @question = Question.find(params[:question_id])
	end

	def create
		@question = Question.find(params[:question_id])
		@question.answers.create(answer_params)
		redirect_to paper_question_url(paper_id: @question.paper_id, id: @question.id)
	end

	private
	def answer_params
		params.require(:answer).permit(:correct, :content)
	end
end
