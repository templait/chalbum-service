class CreateAlbums < ActiveRecord::Migration
	def change
		create_table :albums do |t|
			t.string :title, null: false
			t.timestamps null: false
			t.date :date
		end
		add_reference :albums, :person, foreign_key: true
	end
end
