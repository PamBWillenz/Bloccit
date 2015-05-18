Rails.application.routes.draw do

  get 'advertisement/index'
  get 'advertisement/show'
  
  resources :advertisements
  # get /advertisements/index, controller: 'advertisements', action: 'index'
  # get /advertisements/:id/show, controller: 'advertisements', action: 'show'
  # get /advertisements/new, controller: 'advertisements', action: 'new'
  # post /advertisements/create, controller: 'advertisements', action: 'create'



  resources :posts


  get 'about' => 'welcome#about'
    root to: 'welcome#index'
end
