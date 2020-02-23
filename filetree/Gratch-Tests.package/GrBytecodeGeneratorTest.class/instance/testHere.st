test
testHere
	| w b t |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 1 @ 2.
	w pointAt: 2 put: 3 @ 4.
	b := self newGenerator.
	b here.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self assertCollection: t stack size equals: 2.
	self assertCollection: t pop equals: 2.
	self assertCollection: t pop equals: 1.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self assertCollection: t stack size equals: 2.
	self assertCollection: t pop equals: 4.
	self assertCollection: t pop equals: 3.