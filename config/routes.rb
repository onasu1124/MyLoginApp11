Rails.application.routes.draw do
  get "login" => "login#index"
  post "login" => "login#user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
