Rails.application.routes.draw do

get "/homes/top" => "homes#top", as: "top"
get "/homes/about" => "homes#about", as: "about"

scope module: :public do
  root to: "posts#index"
  resource :posts, only: [:new,:create]
  resources :posts, only: [:show,:index,:destroy,:edit,:update,:rank] do
    resources :comments, only: [:create,:destroy]
  end
end

# namespace :admin do
#   resources :posts, only: [:new,:destroy,:create]
# end

# 顧客用
# URL /customers/sign_in ...
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
