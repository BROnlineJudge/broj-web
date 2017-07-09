class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :verdict
      t.string :language
      t.integer :execution_time
      t.text :code
      t.belongs_to :user
      t.belongs_to :problem

      t.timestamps
    end
  end
end
