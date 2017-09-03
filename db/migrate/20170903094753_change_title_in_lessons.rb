class ChangeTitleInLessons < ActiveRecord::Migration[5.0]
  def change
    change_column :lessons, :title, :string
  end
end
