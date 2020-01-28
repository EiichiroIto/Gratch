private
writeEdgeHeader
	stream nextPutAll: 'edgedef>'.
	self writeColumns: edgeColumns.
	stream nextPutAll: String crlf