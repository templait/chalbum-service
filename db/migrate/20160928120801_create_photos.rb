class CreatePhotos < ActiveRecord::Migration
	def change
		create_table :photos do |t|
			t.string :file, null: false
			t.timestamps null: false
		end
		add_reference :photos, :album, foreign_key: true
	end
end
