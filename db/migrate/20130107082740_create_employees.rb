class CreateEmployees < ActiveRecord::Migration
  def up  	
    create_table :employees do |t|
      t.string 		:first_name, :null => false
      t.string 		:last_name, :null => false
      t.integer 	:company_id, :null => false
      t.datetime	:date_of_birth
      t.string		:staff_number
      t.boolean		:is_permanant_staff, :default => true
      t.string		:national_id_number
      t.string		:contact_number
      t.string		:mobile_number
      t.string		:home_number
      t.string		:epf_number
      t.string    :email
      t.datetime	:joined_date
      t.boolean		:is_active, :default => true
      t.datetime	:left_date

      t.timestamps
    end
  end

  def down
  	drop_table :employees
  end
end
