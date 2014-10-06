class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.integer :number
      t.text :name

      t.timestamps
    end
  end
end
