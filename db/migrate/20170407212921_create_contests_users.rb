class CreateContestsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :contests_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :contest, index: true
    end
  end
end
