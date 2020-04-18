Rails.application.routes.draw do
  
  resources :ticket_lists do
    resources :ticket_items
    member do
      patch :void
    end
  end
  
  root 'ticket_lists#index'
end
