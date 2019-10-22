Rails.application.routes.draw do
  get 'admin_page/new'
  get 'admin_page/create'

  resources :notices
 devise_for :users, :controllers => { registrations: 'registrations' }
  as :user do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'pages#home'
  get '/login' => 'pages#login'

  match 'notices/send_email' ,to: 'notices#send_email',via: :post 
  match 'notices/send_id' ,to: 'notices#send_id',via: :post 
   match 'notices/reg_id' ,to: 'notices#reg_id',via: :post 
    match 'admin_page/new' ,to: 'admin_page#new',via: :post 
   match 'admin_page/create' ,to: 'admin_page#create',via: :post
   match 'admin_page/save' ,to: 'admin_page#save',via: :post 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
