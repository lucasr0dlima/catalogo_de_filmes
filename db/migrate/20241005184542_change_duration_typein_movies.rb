class ChangeDurationTypeinMovies < ActiveRecord::Migration[7.2]
  def change
    change_column :movies, :duration, :integer
  end
end
