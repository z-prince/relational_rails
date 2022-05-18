Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/authors', to: 'authors#index'
  post '/authors', to: 'authors#create'
  get '/authors/new', to: 'authors#new'
  get '/authors/:id', to: 'authors#show'
  patch '/authors/:id', to: 'authors#update'
  get '/authors/:id/edit', to: 'authors#edit'

  get '/authors/:id/books', to: 'author_books#index'
  get '/authors/:id/books/new', to: 'author_books#new'

  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
end
