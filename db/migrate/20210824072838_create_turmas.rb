class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|

      t.references :course
      t.references :teacher

      t.date :beginning_date
      t.date :ending_date


      t.timestamps
    end
  end
end
