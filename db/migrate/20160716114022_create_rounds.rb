class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :cards_played, null: false
      t.integer :first_guess, null: false
      t.integer :user_id, null: false
      t.integer :deck_id, null: false

      t.timestamps null: false
    end
  end
end
