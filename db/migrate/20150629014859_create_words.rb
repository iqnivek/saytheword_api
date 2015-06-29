class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.references :word_list, index: true, foreign_key: true
      t.text :word

      t.timestamps null: false
    end
  end
end
