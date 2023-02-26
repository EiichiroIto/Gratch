test
testNearestNodeFrom

	| w b t |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 1.
	w pointAt: 2 put: 6 @ 3.
	w pointAt: 3 put: 1 @ 2.
	w pointAt: 4 put: 5 @ 1.

	b := self newGenerator.
	b nearestNodeFrom: (self literalValue: 1).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 3.

	b := self newGenerator.
	b nearestNodeFrom: (self literalValue: 2).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 4