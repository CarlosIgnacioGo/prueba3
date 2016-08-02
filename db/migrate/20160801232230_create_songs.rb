class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :duration
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
