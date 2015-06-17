class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.integer :reg_id
      t.string :title

      t.timestamps null: false
    end
  end
end
