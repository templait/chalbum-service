class CreatePeople < ActiveRecord::Migration
	def change
		create_table :people do |t|
		t.string :name, null: false
		t.date :birth_date
		t.text :description
		t.timestamps null: false
		end
	end
end
