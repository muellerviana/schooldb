class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|

      t.references :turmas
      t.references :students

      t.date :registration_date

      t.timestamps
    end
  end
end
