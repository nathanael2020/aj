Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :custom_assets
  end


  # Add your extension routes here
end
