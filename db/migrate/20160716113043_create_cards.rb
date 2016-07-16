class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.string :wrong_answer1, null: false
      t.string :wrong_answer2, null: false
      t.string :wrong_answer3, null: false
      t.integer :deck_id

      t.timestamps null: false
    end
  end
end
