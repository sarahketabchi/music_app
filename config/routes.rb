MusicApp::Application.routes.draw do
  root :to => 'bands#index'
  resources :artists
  resources :bands
  resources :recordings
  resources :songs
end
