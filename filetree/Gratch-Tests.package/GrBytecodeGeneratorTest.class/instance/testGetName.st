test
testGetName

	| w t b r |
	w := self newWorld.
	w createNodes: 2.
	w createEdgeFrom: 2 to: 3.
	b := self newGenerator.
	r := b getName.
	self assert: r isNil.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 0.

	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 0