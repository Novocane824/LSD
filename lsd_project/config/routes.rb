Rails.application.routes.draw do

devise_for :users

root 'site#index'

get 'data' => 'site#data'

get 'data/list' => 'restaurants#list'

get 'contact' => 'site#contact'
post 'contact' => 'contacts#create'

post 'data/time' => 'distances#createT'
get 'data/time' => 'distances#listT'
delete 'data/time/:id' => 'distances#destroy'

post 'restaurants' => 'restaurants#create'
get 'restaurants' => 'restaurants#list'
delete 'restaurants/:id' => 'restaurants#destroy'

post '/result' => 'restaurants#search'


end
