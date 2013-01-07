class CreateCompanies < ActiveRecord::Migration
  def up  	
    create_table :companies do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end

  def down
  	drop_table :companies
  end
end
