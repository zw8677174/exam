class Answer < ApplicationRecord
	belongs_to :question

	def is_correct
		return self.correct == true ? '正确':'错误';
	end
	
	def is_correct_css_class
		return self.correct == true ? 'correct-answer':'wrong-answer';
	end

end
