class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.integer :key
      t.integer :rating
      t.integer :priority
      t.string :comment

      t.timestamps
    end
  end
end
