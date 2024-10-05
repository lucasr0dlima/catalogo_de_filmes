class ChangeNullFromMovies < ActiveRecord::Migration[7.2]
  def change
    change_column_null :movies, :director_id, true
  end
end
