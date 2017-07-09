class CreateTestCases < ActiveRecord::Migration[5.0]
  def change
    create_table :test_cases do |t|
      t.text :input,  null: false
      t.text :output, null: false
      t.belongs_to :problems, index: true, foreign_key: true

      t.timestamps
    end

  end
end
