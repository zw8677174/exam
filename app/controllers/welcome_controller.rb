class WelcomeController < ApplicationController
  def index
		@papers = Paper.all
  end
end
