test
testTicks

	| w b t |
	w := self newWorld.
	w createNodes: 1.
	b := self newGenerator.
	b ticks.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	w incrementTicks.
	w incrementTicks.
	w incrementTicks.

	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 3