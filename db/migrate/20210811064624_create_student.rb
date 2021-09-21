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


#student = Student.new(CPF: "11122233355", name: "Mueller Mendes Viana", email: "muellerviana@gmail.com", phone_number: "993377297", birth_date: 07/31/1994