Rails.application.routes.draw do
  get 'stocks/index'
  # get 'blogs/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/blogs', to: 'blogs#index' #追記する
  get '/stocks', to: 'stocks#index' #追記する
end
