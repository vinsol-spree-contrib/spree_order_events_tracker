Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    resources :orders do
      resources :order_events_tracker, only: [:index]
    end
  end
end
