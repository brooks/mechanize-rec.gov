Camping::Application.routes.draw do

  #home controller, handles login
  get '/' => 'home#login', as: 'login'
  get '/home' => 'home#index', as: 'home'
  get '/payment' => 'home#payment', as: 'payment'
  post '/verify' => 'home#verify', as: 'verify'
  post '/register' => 'home#register', as: 'register'
  post '/reservations' => 'home#reservations', as: 'reservations'

end
