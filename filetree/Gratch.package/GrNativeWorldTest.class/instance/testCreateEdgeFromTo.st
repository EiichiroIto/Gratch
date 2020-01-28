test
testCreateEdgeFromTo
	| w |
	w := self newWorld.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 0.
	self deny: (w isConnectedFrom: 1 to: 2).
	self deny: (w isConnectedFrom: 2 to: 3).
	w createNodes: 3.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 2.
	self assert: (w isConnectedFrom: 1 to: 2).
	self assert: (w isConnectedFrom: 2 to: 3).
	w createEdgeFrom: 1 to: 0.
	w createEdgeFrom: 0 to: 2.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 1.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 2.
	self assert: (w isConnectedFrom: 1 to: 2).
	self assert: (w isConnectedFrom: 2 to: 3).