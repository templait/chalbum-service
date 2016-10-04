class ApplicationController < ActionController::API
	class << self
		attr_accessor :model
	end
	
	attr_accessor :item
	before_action :find_item, only: [:update, :show, :destroy]
	
	def create
		self.item = self.class.model.new
		assign_params
		self.item.save!
	end
	
	def update
		assign_params
		self.item.save!
	end
	
	def show
		render json: item
	end
	
private
	def find_item
		self.item = self.class.model.find_by_id(params[:id])
		render nothing: true, status: :not_found unless item.present?
	end
	
	rescue_from ActiveRecord::RecordInvalid do |e|
		render json: {error: e.message, errors: e.record.errors}, status: :bad_request
	end
end
