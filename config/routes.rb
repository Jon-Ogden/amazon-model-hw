Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do 
    get '/authors', to: 'authors#index'
    get '/authors/:id', to: 'authors#show'
    post '/authors', to: 'authors#create'
    put '/authors/:id', to: 'authors#update'
    delete '/authors/:id', to: 'authors#destroy'

    get '/authors/:author_id/books', to: 'books#index'  # get all books for a given authors
    get '/authors/:author_id/books/:id', to: 'books#show'  # get 1 book for a given authors
    post '/authors/:author_id/books', to: 'books#create'  # create 1 book for a given authors
    put '/authors/:author_id/books/:id', to: 'books#update'  # update 1 book for a given authors
    delete '/authors/:author_id/books/:id', to: 'books#destroy'  # destroy 1 book for a given authors

    get '/books', to:'books#all_books'

  end
end
