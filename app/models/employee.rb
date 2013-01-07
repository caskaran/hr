class Employee < ActiveRecord::Base
  
  attr_accessible :first_name, 
  								:last_name,
									:company_id,
									:date_of_birth,
									:staff_number,
									:is_permanant_staff,
									:national_id_number,
									:contact_number,
									:mobile_number,
									:home_number,
									:epf_number,
									:email,
									:joined_date,
									:is_active,
									:left_date
  
	validates_presence_of :first_name, :last_name, :company_id
	validates :staff_number, :uniqueness => true, :if => :staff_number
	validates :epf_number, :uniqueness => true, :if => :epf_number
	validates :email, :uniqueness => true, :if => :email

	belongs_to :company
end