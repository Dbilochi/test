Rails.application.routes.draw do
  resources :products do
    collection do
        post 'import',       to: 'products#import',          as:  'import'
      end
  end
  root to: "products#index"

  devise_for :users
  namespace :api do
    namespace :v1 do
          resources :products  do
            collection do
              post   'create_product',           to: 'products#create_product',                      as: :confirm
            end
          end
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
