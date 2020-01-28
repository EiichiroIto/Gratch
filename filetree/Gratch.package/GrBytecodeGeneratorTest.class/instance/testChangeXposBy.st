test
testChangeXposBy
	| w b t |
	w := self newWorld.
	w createNodes: 2.
	w xAt: 1 put: 3.
	w xAt: 2 put: 4.
	b := self newGenerator.
	b changeXposBy: 3.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self assert: (w xAt: 1) equals: 3.
	self assert: (w xAt: 2) equals: 7