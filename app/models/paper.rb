class Paper < ApplicationRecord
	has_many :questions
	has_many :examinations
end
