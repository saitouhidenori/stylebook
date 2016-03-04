Rails.application.routes.draw do


devise_for :designers, controllers: {
  sessions:      'designers/sessions',
  passwords:     'designers/passwords',
  registrations: 'designers/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

root 'styles#top'
get 'styles/index' => 'styles#index'
get 'styles/news' => 'styles#news'
get 'styles/:id' => 'styles#show'

  resources :users, only: :show
  resources :styles do
    resources :likes, only: [:create, :destroy]
  end
# resources :scrap, only: [:index, :show] do
  # resources :likes, only: [:create, :destroy]
# end
get 'designer/new'=> 'designers#new'
get 'designers/:id'=> 'designers#index'
get 'users/:id' => 'users#show'

get 'designers/:id' => 'designers#show'



end
