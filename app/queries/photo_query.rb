class PersonQuery < Parascope::Query
	base_scope {Photo.all.order('title ASC')}
end
