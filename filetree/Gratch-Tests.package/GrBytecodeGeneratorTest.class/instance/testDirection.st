test
testDirection

	| w t b r |
	w := self newWorld.
	w createNodes: 2.
	w pointAt: 1 put: 2 @ 1.
	w pointAt: 2 put: 1 @ 0.
	w pointAt: 3 put: 0 @ 0.
	w createEdgeFrom: 1 to: 2.
	b := self newGenerator.
	r := b direction.
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: (1 @ 0 - (2 @ 1)) degrees