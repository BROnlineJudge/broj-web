class CreateContestsProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :contests_problems, id: false do |t|
      t.belongs_to :problem, index: true
      t.belongs_to :contest, index: true
    end
  end
end
