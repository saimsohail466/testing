class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.string :username
      t.string :skill
      t.string :score

      t.timestamps
    end
  end
end
