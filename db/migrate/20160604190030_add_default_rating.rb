class AddDefaultRating < ActiveRecord::Migration[5.0]
  def change
    change_column_default :songs, :rating, 0
  end

end
