Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :posts, only: [:index, :show]
  resources :authors, only: [:index, :show]
  get '/authors/:id/posts', to: "authors#posts"
  get '/authors/:id/posts/:id/content', to: "authors#tags"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
