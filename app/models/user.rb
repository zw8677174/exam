class User < ApplicationRecord
  has_many :papers
  has_many :questions
end
