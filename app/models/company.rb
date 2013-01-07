class Company < ActiveRecord::Base
  
  attr_accessible :name
  
	validates_presence_of :name
	validates :name, :uniqueness => true

	has_many :employees
end
