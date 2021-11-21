Rails.application.routes.draw do
  get 'pages/:title', to: 'pages#show', as: 'pages_show'

  get 'events/index', to: 'events#index'

  get 'welcome/index'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
