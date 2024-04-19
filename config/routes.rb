# ルーティングに関する記述をまとめる
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # #indexがpost_controller.rbのアクションメソッドに対応する
get 'posts', to: 'posts#index'
get 'posts/new', to: 'posts#new' # posts/newのURLからnewメソッドを実行する
post 'posts', to: 'posts#create' # postsのURLからcreateアクションを実行する
end
