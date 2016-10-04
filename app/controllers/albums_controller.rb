class AlbumsController < ApplicationController
	self.model = Album
	def index
		render json: AlbumQuery.new(params).resolved_scope
	end
	
private
	def assign_params
		item.assign_attributes params.permit(:person_id, :title, :date)
	end
end
