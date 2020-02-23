test
testDistanceFromTo
	| w t b r |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 1.
	w pointAt: 2 put: 1 @ 0.
	w pointAt: 3 put: 0 @ 0.
	b := self newGenerator.
	b distanceFrom: 1 to: 3.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: 5 sqrt.
	b := self newGenerator.
	b distanceFrom: 1 to: 2.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: 2 sqrt