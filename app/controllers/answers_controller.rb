class AnswersController < ApplicationController
	def new
    @question = Question.find(params[:question_id])
	end

	def create
		redirect_to url_for(paper_question_url(:id=>Question.find(params[:question_id]).answers.create(answer_params).question_id))
	end

	def answer_params
		params.require(:answer).permit(:correct, :content)	
	end
end
