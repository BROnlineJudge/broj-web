class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string  :name,               null: false
      t.text    :description,        null: false
      t.text    :input_description,  null: false
      t.text    :output_description, null: false
      t.text    :custom_check
      t.text    :note

      t.integer :time_limit,         null: false
      t.integer :memory_limit,       null: false

      t.timestamps
    end
  end
end
