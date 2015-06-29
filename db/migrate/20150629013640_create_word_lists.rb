class CreateWordLists < ActiveRecord::Migration
  def change
    create_table :word_lists do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
