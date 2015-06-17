require 'test_helper'

class RegsControllerTest < ActionController::TestCase
  setup do
    @reg = regs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg" do
    assert_difference('Reg.count') do
      post :create, reg: { amount: @reg.amount, annual_supply: @reg.annual_supply, board: @reg.board, board_university: @reg.board_university, challan: @reg.challan, cnic: @reg.cnic, date: @reg.date, division: @reg.division, dob: @reg.dob, examination_id: @reg.examination_id, fname: @reg.fname, local_domicile: @reg.local_domicile, n_y_reg: @reg.n_y_reg, per_address: @reg.per_address, pre_address: @reg.pre_address, pre_reg: @reg.pre_reg, roll_no: @reg.roll_no, sname: @reg.sname, sub_pass: @reg.sub_pass, subject_id: @reg.subject_id, year: @reg.year }
    end

    assert_redirected_to reg_path(assigns(:reg))
  end

  test "should show reg" do
    get :show, id: @reg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg
    assert_response :success
  end

  test "should update reg" do
    patch :update, id: @reg, reg: { amount: @reg.amount, annual_supply: @reg.annual_supply, board: @reg.board, board_university: @reg.board_university, challan: @reg.challan, cnic: @reg.cnic, date: @reg.date, division: @reg.division, dob: @reg.dob, examination_id: @reg.examination_id, fname: @reg.fname, local_domicile: @reg.local_domicile, n_y_reg: @reg.n_y_reg, per_address: @reg.per_address, pre_address: @reg.pre_address, pre_reg: @reg.pre_reg, roll_no: @reg.roll_no, sname: @reg.sname, sub_pass: @reg.sub_pass, subject_id: @reg.subject_id, year: @reg.year }
    assert_redirected_to reg_path(assigns(:reg))
  end

  test "should destroy reg" do
    assert_difference('Reg.count', -1) do
      delete :destroy, id: @reg
    end

    assert_redirected_to regs_path
  end
end
