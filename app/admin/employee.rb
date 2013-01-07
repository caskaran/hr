ActiveAdmin.register Employee do    

  index do                            
    column 	:first_name                     
    column 	:last_name        
    column 	:company           
    column 	:staff_number
    column	:is_permanant_staff
    column	:is_active
    default_actions                   
  end                        

  filter :first_name
  filter :last_name
  filter :company
  filter :staff_number
  filter :national_id_number
  filter :is_permanant_staff
  filter :national_id_number
  filter :email

end