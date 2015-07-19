Rails.application.routes.draw do
  scope module: :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :word_lists, only: [:show, :create, :update]
    end
  end
end
