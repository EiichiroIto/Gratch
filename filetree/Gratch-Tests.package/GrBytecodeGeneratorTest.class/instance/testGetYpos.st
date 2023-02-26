test
testGetYpos

	| w t b |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 10.
	w pointAt: 2 put: 1 @ 20.
	w pointAt: 3 put: 0 @ 30.
	b := self newGenerator.
	b getYpos.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) closeTo: 10.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	self assert: (t evaluate: 1) closeTo: 20.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 3.
	t codes: b code.
	self assert: (t evaluate: 1) closeTo: 30