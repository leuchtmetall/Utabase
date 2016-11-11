class AddDefaultPriorityToSongs < ActiveRecord::Migration[5.0]
  def change
    change_column_default :songs, :priority, 0
  end
end
