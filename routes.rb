Rails.application.routes.draw do
    root 'main#index'
    patch 'main/.id' => 'main#update_status'
    resources :main
end
