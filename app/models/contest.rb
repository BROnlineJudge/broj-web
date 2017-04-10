class Contest < ApplicationRecord
  has_and_belongs_to_many :problems
  has_and_belongs_to_many :users

  validates :name, presence: true
  validates :start, presence: true
  validates :duration, presence: true

  def ended?
    # TODO:
    false
  end
end
