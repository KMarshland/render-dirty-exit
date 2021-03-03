Rails.application.routes.draw do

  get 'dirty_exit' => 'main#dirty_exit'

  root 'main#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
