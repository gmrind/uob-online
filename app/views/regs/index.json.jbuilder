json.array!(@regs) do |reg|
  json.extract! reg, :id, :sname, :fname, :dob, :n_y_reg, :subject_id, :pre_reg, :board, :local_domicile, :cnic, :per_address, :pre_address, :challan, :amount, :date, :year, :annual_supply, :roll_no, :division, :sub_pass, :board_university, :examination_id
  json.url reg_url(reg, format: :json)
end
