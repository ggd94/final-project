Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #you have to add this if you want a function run root 'controller_name#action_name'
  root 'application#hello'
end
