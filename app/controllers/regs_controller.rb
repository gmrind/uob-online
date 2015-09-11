class RegsController < ApplicationController
  before_action :set_reg, only: [:show, :edit, :update, :destroy]

  # GET /regs
  # GET /regs.json
  def index
    @regs = Reg.all
  end

  # GET /regs/1
  # GET /regs/1.json
  def show
  	respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'reg'   # Excluding ".pdf" extension.
      end
    end
  end

  # GET /regs/new
  def new
    @reg = Reg.new
    3.times { @reg.subs.build }
    5.times { @reg.exams.build }
  end

  # GET /regs/1/edit
  def edit
  end

  # POST /regs
  # POST /regs.json
  def create
    @reg = Reg.new(reg_params)

    respond_to do |format|
      if @reg.save
        format.html { redirect_to @reg, notice: 'Reg was successfully created.' }
        format.json { render :show, status: :created, location: @reg }
      else
        format.html { render :new }
        format.json { render json: @reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regs/1
  # PATCH/PUT /regs/1.json
  def update
    respond_to do |format|
      if @reg.update(reg_params)
        format.html { redirect_to @reg, notice: 'Reg was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg }
      else
        format.html { render :edit }
        format.json { render json: @reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regs/1
  # DELETE /regs/1.json
  def destroy
    @reg.destroy
    respond_to do |format|
      format.html { redirect_to regs_url, notice: 'Reg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg
      @reg = Reg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_params
      params.require(:reg).permit(:sname, :fname, :dob, :n_y_reg, :subject_id, :pre_reg, :board, :local_domicile, :cnic, :per_address, :pre_address, :religion, :challan, :amount, :date, :year, :annual_supply, :roll_no, :division, :sub_pass, :board_university, :examination_id,
      subs_attributes: [ :id, :title], exams_attributes: [ :id, :name, :year, :annu_supp, :roll_num, :divis, :sub_pass, :boar_univ])
    end
end
