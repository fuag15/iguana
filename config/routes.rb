Iguana::Application.routes.draw do
  devise_for :users

 resources :page do
    collection do
      get :index
    end
  end
  
  root :to => 'page#index'
end
