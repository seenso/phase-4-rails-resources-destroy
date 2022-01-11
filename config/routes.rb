Rails.application.routes.draw do
  # resources :birds, only: [:index, :show, :create, :update, :destroy]
  #using all 5 RESTful routes so we can get rid of the only option
  resources :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
end
