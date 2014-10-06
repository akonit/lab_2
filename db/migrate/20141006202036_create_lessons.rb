class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.text :name
      t.text :teacher
      t.integer :day
      t.text :start
      t.text :end
      t.references :group, index: true

      t.timestamps
    end
  end
end
