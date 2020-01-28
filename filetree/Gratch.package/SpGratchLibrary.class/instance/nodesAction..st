accessing
nodesAction: aBlock
	buttonNodes
		action: [ self selectButton: 'Nodes'.
			aBlock value ]