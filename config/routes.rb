MusicApp::Application.routes.draw do
  resources :artists
  resources :bands
  resources :recordings
  resources :songs
end
