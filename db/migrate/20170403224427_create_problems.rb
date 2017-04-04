class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :name
      t.string :description
      t.string :sample_input
      t.string :sample_output
      t.string :input
      t.string :output
      t.string :note

      t.timestamps
    end
  end
end
