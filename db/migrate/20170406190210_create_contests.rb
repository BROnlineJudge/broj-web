class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.string :name
      t.time :start
      t.integer :duration

      t.timestamps
    end
  end
end
