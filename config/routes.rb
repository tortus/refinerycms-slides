Refinery::Core::Engine.routes.append do

  # Admin routes
  namespace :slides, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :slides, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
