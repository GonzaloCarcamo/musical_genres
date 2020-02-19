class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :artist
      t.string :song
      t.string :genre
      t.string :tag

      t.timestamps
    end
  end
end
