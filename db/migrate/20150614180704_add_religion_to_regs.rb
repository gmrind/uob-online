class AddReligionToRegs < ActiveRecord::Migration
  def change
    add_column :regs, :religion, :string
  end
end
