# Rails.application.routes.draw do
#   resources :blogs
#     collection do
#       post :confirm
#     end
#   # get '/blogs', to: 'blogs#new' 
#   # get 'stocks/index'
#   # # get 'blogs/index'
#   # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   # get '/blogs', to: 'blogs#index' #追記する
#   # get '/blogs/new', to: 'blogs#new' #追記する
#   # post '/blogs', to: 'blogs#create' 
#   # get '/stocks', to: 'stocks#index' #追記する
# end

Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
end