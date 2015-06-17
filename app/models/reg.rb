class Reg < ActiveRecord::Base

	belongs_to :subject
	belongs_to :examination
	has_many :subs, :dependent => :destroy
	accepts_nested_attributes_for :subs

	has_many :exams, :dependent => :destroy
	accepts_nested_attributes_for :exams

	validates_presence_of :sname, :fname, :dob, :n_y_reg, :pre_reg, :board, :local_domicile,
												:per_address, :pre_address, :challan, :amount, :date,
												subs_attributes: [ :id, :title],
												exams_attributes: [ :id, :name, :year, :annu_supp, :roll_num, :divis, :sub_pass, :boar_univ ]

	validates_length_of :sname, maximum: 30
	validates_length_of :fname, maximum: 30

	validates :cnic, :format => {with: /\d{5}-\d{7}-\d{1}/, message: "worng format. Please use this format ( xxxxx-xxxxxxx-x )"}

end
