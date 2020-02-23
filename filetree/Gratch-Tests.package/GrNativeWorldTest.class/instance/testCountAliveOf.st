test
testCountAliveOf
	| w list |
	w := self newWorld.
	w createNodes: 3.
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 3.
	w createNodes: 3.
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 6.
	list := w createEdges: 5.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 0.
	w n1At: list first put: 3.
	w n2At: list first put: 3.
	w n1At: list third put: 3.
	w n2At: list third put: 3.
	w n1At: list second put: 3.
	w n2At: list fourth put: 3.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 2.