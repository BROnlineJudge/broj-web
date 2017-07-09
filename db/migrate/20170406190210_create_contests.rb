class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.string   :name, null: false
      t.datetime :start, null: false
      t.integer  :duration, null: false

      t.timestamps
    end
  end
end
