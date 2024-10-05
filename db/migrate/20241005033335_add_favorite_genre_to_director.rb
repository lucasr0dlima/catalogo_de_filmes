class AddFavoriteGenreToDirector < ActiveRecord::Migration[7.2]
  def change
    add_reference :directors, :genre, null: false, foreign_key: true, default: 0
  end
end
