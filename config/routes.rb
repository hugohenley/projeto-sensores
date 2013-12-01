ProjetoSensores::Application.routes.draw do

  root 'application#index'
  resources :position_details

end
