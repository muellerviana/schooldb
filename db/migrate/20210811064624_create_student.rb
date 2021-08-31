class CreateStudent < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|

      t.string :CPF
      t.string :name
      t.string :email
      t.string :phone_number
      t.date :birth_date

      t.timestamps
    end
  end
end
