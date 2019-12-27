Rails.application.routes.draw do
  get 'people', to: 'people#index'
  get 'people/:ahan', to: 'people#show'
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
