class PeopleController < ApplicationController
	self.model = Person
	
	def index
		render json: PersonQuery.new(params).resolved_scope
	end
private
	
	def assign_params
		item.assign_attributes params.permit(:name, :birth_date, :description)
	end
end
