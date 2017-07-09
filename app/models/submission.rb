class Submission < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :problem
end
