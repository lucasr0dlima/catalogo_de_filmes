class ChangeColumnTypeinMovies < ActiveRecord::Migration[7.2]
  def change
    change_column :movies, :launch_year, :integer
  end
end
