Rails.application.routes.draw do
    root to: 'foods#index'
    resources :foods, only: [:new, :create, :show, :destroy, :edit, :update]
end
