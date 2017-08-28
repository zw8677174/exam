class Question < ApplicationRecord
	belongs_to :paper
	has_many :answers
end
