test
testDegreesOf
	| w t b |
	w := self newWorld.
	w createNodes: 4.
	w createEdges: 3.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 2.
	w n2At: 2 put: 2.
	w n1At: 3 put: 1.
	w n2At: 3 put: 3.
	b := self newGenerator.
	b degreesOf: 1.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 2.

	b := self newGenerator.
	b degreesOf: 2.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 3.

	b := self newGenerator.
	b degreesOf: 3.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	b degreesOf: 4.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0