Abes::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

  root to: 'abes#home'

  get '/abes/who', to: 'abes#who', as: 'who'
  get '/abes/what', to: 'abes#what', as: 'what'
  get '/abes/power_point', to: 'abes#power_point', as: 'power_point'
  get '/abes/current_status', to: 'abes#current_status', as: 'current_status'
  get '/abes/news', to: 'abes#news', as: 'news'
  get '/inquiries/new', to: 'inquiries#new', as: 'new'  
  
  resources :inquiries, :only => [:new, :create] do 
    get 'thank_you', :on => :collection
  end
end
