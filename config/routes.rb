Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      shallow do
        resources :topics do
          shallow do
            resources :subtopics do
              resources :contents
            end
          end
        end
      end
      get '/subtopics' => 'subtopics#index_all'
      get '/contents' => 'contents#index_all' 
    end
  end
end
