test
testOtherNode

	| w b t |
	w := self newWorld.
	w createNodes: 2.
	b := self newGenerator.
	b otherNode.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 2.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1