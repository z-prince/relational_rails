Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  get '/authors', to: 'authors#index'
  post '/authors', to: 'authors#create'
  get '/authors/new', to: 'authors#new'
  get '/authors/:author_id', to: 'authors#show'
  patch '/authors/:id', to: 'authors#update'
  get '/authors/:id/edit', to: 'authors#edit'
  delete '/authors/:id', to: 'authors#destroy'

  get '/authors/:author_id/books', to: 'author_books#index'
  post '/authors/:author_id/books', to: 'author_books#create'
  get '/authors/:author_id/books/new', to: 'author_books#new'

  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  patch '/books/:id', to: 'books#update'
  get '/books/:id/edit', to: 'books#edit'
end
