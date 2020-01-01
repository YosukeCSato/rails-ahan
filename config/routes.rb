Rails.application.routes.draw do
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
  get 'ahan', to: 'ahan#index'
  get 'ahan/ahan'
  get 'uhihi', to: 'ahan#uhihi'
  post 'ahan/index'

  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'

end
