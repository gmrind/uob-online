class CreateRegs < ActiveRecord::Migration
  def change
    create_table :regs do |t|
      t.string :sname
      t.string :fname
      t.date :dob
      t.string :n_y_reg
      t.references :subject, index: true
      t.string :pre_reg
      t.string :board
      t.string :local_domicile
      t.string :cnic
      t.string :per_address
      t.string :pre_address
      t.string :challan
      t.string :amount
      t.date :date
      t.integer :year
      t.string :annual_supply
      t.string :roll_no
      t.string :division
      t.string :sub_pass
      t.string :board_university
      t.references :examination, index: true

      t.timestamps null: false
    end
    add_foreign_key :regs, :subjects
    add_foreign_key :regs, :examinations
  end
end
