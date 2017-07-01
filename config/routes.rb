Rails.application.routes.draw do
  get 'welcome/home' => 'welcome#home'
  root 'welcome#home'
  resources :users
  resources :navigations
  resources :dropdown_edits
  resources :flowchart_edits
  resources :dropdowns
  resources :flowcharts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
