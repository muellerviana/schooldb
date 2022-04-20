class CreateTableCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :requirement
      t.integer :work_load
      t.float :price

      t.timestamps
    end
  end
end