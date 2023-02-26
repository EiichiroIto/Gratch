test
testCreateEdgeTo
	| g |
	g := self newGenerator.
	g createEdgeTo: (self literalValue: 4).
	self
		assertCollection: g code
		equals:
			{#getId.
			#pushShort.
			4.
			0.
			#createEdgeFromTo.
			#stop}