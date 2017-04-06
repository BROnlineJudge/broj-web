class AddProblemToContest < ActiveRecord::Migration[5.0]
  def change
    add_reference :contests, :problem, foreign_key: true
  end
end
