
class AlbumQuery < Parascope::Query
	base_scope {Album.all.order('date ASC')}
end
