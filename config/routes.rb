Rails.application.routes.draw do
  resources :board_messages
  resources :board_users
  resources :data_pages
  devise_for :accounts
  root 'ahan#index'

  get 'ajax/index'
  get 'ajax/data'
  resources :questionary_results
  resources :questionary_choices
  resources :questionary_items
  resources :questionaries
  resources :answers
  resources :questions
  resources :mycontacts

  get 'questionary_results/calc/:id', to: 'questionary_results#calc'
  get 'questionary_choices/new/:id', to: 'questionary_choices#new'
  get 'questionary_items/new/:id', to: 'questionary_items#new'
  post 'questionaries/:id', to: 'questionaries#sendform'

  get 'blogs/index'
  get 'blogs', to: 'blogs#index'
  get 'blogs/:page', to: 'blogs#index'
  get 'blogs/genre/:id', to: 'blogs#genre'
  get 'blogs/genre/:id/:page', to: 'blogs#genre'
  get 'blogs/show/:id', to: 'blogs#show'

  get 'blogposts', to: 'blogposts#index'
  get 'blogposts/index'
  get 'blogposts/delete/:id', to: 'blogposts#delete'
  post 'blogposts/delete', to: 'blogposts#delete'
  post 'blogposts/delete/:id', to: 'blogposts#delete'
  get 'blogposts/add'
  post 'blogposts/add'
  get 'blogposts/:id', to: 'blogposts#edit'
  patch 'blogposts/:id', to: 'blogposts#edit'
  get 'blogposts/delete'

  get 'bloggenres/index'
  get 'bloggenres', to: 'bloggenres#index'
  get 'bloggenres/add'
  post 'bloggenres/add'
  get 'bloggenres/:id', to: 'bloggenres#edit'
  patch 'bloggenres/:id', to: 'bloggenres#edit'

  get 'blogconfigs/index'
  get 'blogconfigs', to: 'blogconfigs#index'
  get 'blogconfigs/edit'
  patch 'blogconfigs/edit'


  get 'messages/index'
  get 'messages', to: 'messages#index'
  get 'messages/add'
  post 'messages/add', to: 'messages#create'
  get 'messages/:id', to: 'messages#show'
  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'
  get 'messages/delete/:id', to: 'messages#delete'
  
  get 'albums/index'
  get 'albums', to: 'albums#index'
  get 'albums/show'
  get 'albums/add'
  post 'albums/add'
  get 'albums/edit/:id', to: 'albums#edit'
  patch 'albums/edit/:id', to: 'albums#edit'
  get 'albums/delete/:id', to: 'albums#delete'
  patch 'albums/delete/:id', to: 'albums#delete'

  get 'cards', to: 'cards#index'
  get 'cards/index'

  get 'cards/add'
  post 'cards/add'

  get 'cards/:id', to: 'cards#show'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'
  
  get 'people', to: 'people#index'
  get 'people/find'
  post 'people/find'
  get 'people/add', to: 'people#add'
  post 'people/add', to: 'people#create'
  get 'people/:ahan', to: 'people#show'
  get 'people/edit/:ahan', to: 'people#edit'
  patch 'people/edit/:ahan', to: 'people#update'
  get 'people/delete/:jabarasan', to: 'people#delete'



  get 'dengonban/index'
  get 'ahan/index'
  get 'ahan/login_check'
  get 'ahan', to: 'ahan#index'
  get 'ahan/ahan'
  get 'uhihi', to: 'ahan#uhihi'
  post 'ahan/index'

  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'

end
