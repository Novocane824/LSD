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
get 'restaurants/:id' => 'restaurants#show'

get 'restaurants/:id/edit' => 'restaurants#edit'
patch 'restaurants/:id' => 'restaurants#update'

post 'result' => 'restaurants#search'

# get 'restaurants/:id' => 'menuitems#showmenu'
# get 'restaurants/:id/menu' => 'menuitems#createmenu'
# post 'restaurants/:id/menu' => 'menuitems#createmenu'

end
