class ExaminationsController < ApplicationController
	def new
		@paper = Paper.find(params[:paper_id])
	end
	
	def index
		
	end

end
