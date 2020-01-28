private
addEdgeWith: aCollection
	| arc |
	arc := self newEdge.
	aCollection
		do:
			[ :each | self setEdge: arc atColumn: each first first to: each second ]