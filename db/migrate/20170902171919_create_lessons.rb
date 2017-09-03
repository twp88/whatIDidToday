class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.text :title
      t.text :lesson

      t.timestamps
    end
  end
end
