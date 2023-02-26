test
testSetXpos

	| w t b |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 1.
	w pointAt: 2 put: 1 @ 0.
	w pointAt: 3 put: 0 @ 0.
	self assert: (w xAt: 1) equals: 2.
	self assert: (w xAt: 2) equals: 1.
	self assert: (w xAt: 3) equals: 0.

	b := self newGenerator.
	b setXpos: (self literalValue: 10).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self assert: (w xAt: 1) equals: 10.
	self assert: (w xAt: 2) equals: 1.
	self assert: (w xAt: 3) equals: 0.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self assert: (w xAt: 1) equals: 10.
	self assert: (w xAt: 2) equals: 10.
	self assert: (w xAt: 3) equals: 0