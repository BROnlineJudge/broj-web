class Problem < ApplicationRecord
  has_many :test_cases
  has_many :submissions
  has_and_belongs_to_many :contests

  validates :name, presence: true
  validates :description, presence: true
  validates :input_description, presence: true
  validates :output_description, presence: true
  validates :time_limit, presence: true
  validates :memory_limit, presence: true

  def is_ready?
    # A problem is only ready when it has at least one test case.
    return !self.test_cases.blank?
  end
end
