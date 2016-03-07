Rails.application.routes.draw do
  root "calc#index"

  get "calc/add" => "calc#add", :as => "calc_add"
  get "calc/subtract" => "calc#subtract", :as => "calc_subtract"
  get "calc/multiply" => "calc#multiply", :as => "calc_multiply"
  get "calc/divide" => "calc#divide", :as => "calc_divide"
end
