Rails.application.routes.draw do
	resources :people, only: [:index, :create, :show, :update, :delete] do
		resources :albums, only: [:create,  :index] do
			resources :photos, only: [:create, :index]
		end
	end
	resources :albums, only: [:delete, :update, :index, :show]
	resources :albums, photos: [:delete, :update, :index, :show]
end
