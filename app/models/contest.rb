class Contest < ApplicationRecord
	has_many :problems

	validates :name, presence: true
end
