Rails.application.routes.draw do
root "homes#top"
get "/homes/about" => "homes#about", as: "about"

devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

devise_scope :user do
    post 'public/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  namespace :public do
    get 'users/confirm_withdraw'
  end

scope module: :public do
  get '/searches/search' => 'searches#search'
  get '/posts/rank' => 'posts#rank'
  get 'users/confirm_withdraw' => 'users#confirm_withdraw', as: 'confirm_withdraw'
  patch '/users/withdraw' => 'users#withdraw'
  resources :users, only: [:show,:edit,:update]
  resource :posts, only: [:new,:create]
  resources :posts, only: [:show,:index,:destroy,:edit,:update] do
    resources :comments, only: [:create,:destroy,:new]
  end
end

namespace :admin do
  resources :posts, only: [:destroy,:show]
    resources :comments, only: [:destroy]
  resources :users, only: [:show,:index,:edit,:update,:destroy]
  patch '/users/withdraw' => 'users#withdraw'
  #get 'users/:id/post_index' => 'users#post_index'
  get 'users/:id/comment_index' => 'users#comment_index'

end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
