Iguana::Application.routes.draw do
 resources :page do
    collection do
      get :index
    end
  end
  
  root :to => 'page#index'
end
