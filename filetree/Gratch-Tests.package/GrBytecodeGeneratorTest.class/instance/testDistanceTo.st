test
testDistanceTo
	| w t b r |
	w := self newWorld.
	w createNodes: 2.
	w pointAt: 1 put: 2 @ 1.
	w pointAt: 2 put: 1 @ 0.
	w pointAt: 3 put: 0 @ 0.
	b := self newGenerator.
	r := b distanceTo: (self literalValue: 1).
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 3.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: 5 sqrt.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: 2 sqrt