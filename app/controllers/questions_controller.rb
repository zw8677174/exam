class QuestionsController < ApplicationController
	def index
		@questions = Paper.find(params[:paper_id]).questions
	end

	def new
   		@paper = Paper.find(params[:paper_id])
  	end

  	def create
		@paper = Paper.find(params[:paper_id])
		@quesiton = @paper.questions.create(question_params)
		redirect_to @paper.question.find(@question.id)

	end

  	def show
		@question = Question.find(params[:id])
  	end

  	private
    	def question_params
      	params.require(:question).permit(:title, :tag, :body, :answer, :paper_id)
    	end
end
