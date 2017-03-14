Rails.application.routes.draw do
  root "home#index"

  get 'home/:num' => "home#home"
  get 'controller' => "home#controller"

  mount ActionCable.server => '/cable'
end
