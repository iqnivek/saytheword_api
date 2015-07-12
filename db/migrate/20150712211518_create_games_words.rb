class CreateGamesWords < ActiveRecord::Migration
  def change
    create_table :games_words, id: false do |t|
      t.references :game
      t.references :word
    end

    add_index :games_words, :game_id
    add_index :games_words, :word_id
  end
end
