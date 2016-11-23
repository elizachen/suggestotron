Rails.application.routes.draw do
  root 'topics#index'
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end

  #get "/topics/:page" => "pages#show"
  get '/about' => 'topics#about'
  #get "/topics/:about" => "pages#show
  #match '/about',   to: 'static_pages#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
