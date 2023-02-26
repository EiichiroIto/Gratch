test
testGetN2

	| w t b r |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 1.
	w pointAt: 2 put: 1 @ 0.
	w pointAt: 3 put: 0 @ 0.
	w createEdgeFrom: 2 to: 3.
	b := self newGenerator.
	r := b getN2.
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 3