test
testCreateNodes
	| e s |
	e := self newThread.
	s := e stack size.
	e push: 20.
	self assert: (e grWorld breedOf: GrBreedId nodesBreedNo) countAlive equals: 0.
	e createNodes.
	self assert: e stack size equals: s.
	self assert: (e grWorld breedOf: GrBreedId nodesBreedNo) countAlive equals: 20.