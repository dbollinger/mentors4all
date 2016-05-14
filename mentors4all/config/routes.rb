Rails.application.routes.draw do
  # root 'welcome#index'
  resources :mentors do
    resources :availability
  end
  resources :educators, only: [:new, :create]
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end



end
