test
testChangeVarBy2
	| w vid b t |
	w := self newWorld.
	w createNodes: 2.
	vid := (w breedOf: GrBreedId nodesBreedNo) addVariable: 'a'.
	w
		var: vid
		breed: GrBreedId nodesBreedNo
		at: 1
		put: 5.
	b := self newGenerator.
	b changeVar: vid by: 10.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self assert: (w var: vid breed: GrBreedId nodesBreedNo at: 1) equals: 15.
	self assert: (w var: vid breed: GrBreedId nodesBreedNo at: 2) equals: 0.
	b := self newGenerator.
	b changeVar: vid by: -1.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self assert: (w var: vid breed: GrBreedId nodesBreedNo at: 1) equals: 15.
	self assert: (w var: vid breed: GrBreedId nodesBreedNo at: 2) equals: -1