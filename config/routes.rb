Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :password_resets,     only: [:new, :create, :edit, :update]

end
