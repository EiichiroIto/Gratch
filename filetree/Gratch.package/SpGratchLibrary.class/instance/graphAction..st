accessing
graphAction: aBlock
	buttonGraph
		action: [ self selectButton: 'Graph'.
			aBlock value ]