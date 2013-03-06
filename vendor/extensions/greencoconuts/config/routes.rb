Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :greencoconuts do
    resources :greencoconuts, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :greencoconuts, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :greencoconuts, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
