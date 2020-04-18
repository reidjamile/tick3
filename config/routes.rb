Rails.application.routes.draw do
  
  resources :ticket_lists do
    resources :ticket_items
  end
  
  root 'ticket_lists#index'
end
