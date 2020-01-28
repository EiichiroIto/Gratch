accessing
edgesAction: aBlock
	buttonEdges
		action: [ self selectButton: 'Edges'.
			aBlock value ]