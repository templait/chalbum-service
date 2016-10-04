
class PersonQuery < Parascope::Query
	base_scope {Person.all.order('name ASC')}
	
	
end
