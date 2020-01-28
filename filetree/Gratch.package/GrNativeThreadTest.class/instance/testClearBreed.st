test
testClearBreed
	| w e |
	w := self newWorld.
	w createNodes: 5.
	w createEdges: 3.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 3.
	w n2At: 2 put: 4.
	w n1At: 3 put: 5.
	w n2At: 3 put: 6.
	e := self newThread: w.
	self assert: (w breedOf: GrBreedId nodesBreedNo) countAlive equals: 5.
	self assert: (w breedOf: GrBreedId edgesBreedNo) countAlive equals: 3.
	e push: GrBreedId edgesBreedNo.
	e clearBreed.
	self assert: (w breedOf: GrBreedId nodesBreedNo) countAlive equals: 5.
	self assert: (w breedOf: GrBreedId edgesBreedNo) countAlive equals: 0.
	self assert: e stack size equals: 0.