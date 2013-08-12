Camping::Application.routes.draw do

  #home controller, handles login
  get '/' => 'home#login', as: 'login'
  get '/home' => 'home#index', as: 'home'
  post '/verify' => 'home#verify', as: 'verify'
  post '/register' => 'home#register', as: 'register'

end
