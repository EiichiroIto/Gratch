test
testCreateNodes
	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	self assertCollection: list equals: #(1 2 3).
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 3.
	list := w createNodes: 3.
	self assertCollection: list equals: #(4 5 6).
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 6.