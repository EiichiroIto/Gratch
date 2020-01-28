private
writeNodeHeader
	stream nextPutAll: 'nodedef>'.
	self writeColumns: nodeColumns.
	stream nextPutAll: String crlf