class Photo < ActiveRecord::Base
	belongs_to :album
	validates :album_id, :file, presence: true
end
