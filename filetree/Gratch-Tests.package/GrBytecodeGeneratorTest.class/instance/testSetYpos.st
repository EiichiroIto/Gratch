test
testSetYpos

	| w t b |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 5.
	w pointAt: 2 put: 1 @ 6.
	w pointAt: 3 put: 0 @ 7.
	self assert: (w yAt: 1) equals: 5.
	self assert: (w yAt: 2) equals: 6.
	self assert: (w yAt: 3) equals: 7.

	b := self newGenerator.
	b setYpos: (self literalValue: 10).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self assert: (w yAt: 1) equals: 10.
	self assert: (w yAt: 2) equals: 6.
	self assert: (w yAt: 3) equals: 7.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self assert: (w yAt: 1) equals: 10.
	self assert: (w yAt: 2) equals: 10.
	self assert: (w yAt: 3) equals: 7