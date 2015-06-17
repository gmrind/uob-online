class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.string :year
      t.string :annu_supp
      t.string :roll_num
      t.string :divis
      t.string :sub_pass
      t.string :boar_univ
      t.integer :reg_id

      t.timestamps null: false
    end
  end
end
