Rails.application.routes.draw do
  resources :lists, except: %i[destroy edit update] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, :destroy
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
