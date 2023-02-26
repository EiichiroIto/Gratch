test
testGetXpos

	| w t b |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 1.
	w pointAt: 2 put: 1 @ 0.
	w pointAt: 3 put: 0 @ 0.
	b := self newGenerator.
	b getXpos.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) closeTo: 2.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	self assert: (t evaluate: 1) closeTo: 1.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 3.
	t codes: b code.
	self assert: (t evaluate: 1) closeTo: 0