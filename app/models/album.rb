class Album < ActiveRecord::Base
	validates :person_id, :title, :date, presence: true
	belongs_to :person
	has_many :photos
end
