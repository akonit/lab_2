class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :cource
      t.text :name
      t.references :faculty, index: true

      t.timestamps
    end
  end
end
