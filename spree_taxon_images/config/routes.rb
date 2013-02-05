Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :taxonomies do
      resources :taxons do
        resources :taxon_images
      end
    end

  end

end
