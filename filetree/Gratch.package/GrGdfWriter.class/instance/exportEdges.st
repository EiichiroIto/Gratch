private
exportEdges
	self writeEdgeHeader.
	grWorld allEdges
		do: [ :each | 
			self writeEdge: each.
			stream nextPutAll: String crlf ]