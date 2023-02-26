test
testSetRandomSeed

	| w b t |
	w := self newWorld.
	w createNodes: 1.
	b := self newGenerator.
	b setRandomSeed: (self literalValue: 123).
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self assert: w random seed equals: 123