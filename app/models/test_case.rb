class TestCase < ApplicationRecord
  belongs_to :problem

  validates :problem, presence: true
  validates :input, presence: true
  validates :output, presence: true
end
