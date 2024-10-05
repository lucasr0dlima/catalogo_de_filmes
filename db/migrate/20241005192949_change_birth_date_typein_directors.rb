class ChangeBirthDateTypeinDirectors < ActiveRecord::Migration[7.2]
  def change
    change_column :directors, :birth_date, :date
  end
end
