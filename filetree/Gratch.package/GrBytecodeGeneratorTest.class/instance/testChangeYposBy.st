test
testChangeYposBy
	| w b t |
	w := self newWorld.
	w createNodes: 2.
	w yAt: 1 put: 3.
	w yAt: 2 put: 4.
	b := self newGenerator.
	b changeYposBy: 3.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self assert: (w yAt: 1) equals: 3.
	self assert: (w yAt: 2) equals: 7