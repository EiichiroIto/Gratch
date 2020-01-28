test
testMinVarBreed
	| w t v b |
	w := self newWorld.
	w createNodes: 3.
	v := (w breedOf: GrBreedId nodesBreedNo) addVariable: 'a'.
	w var: v breed: GrBreedId nodesBreedNo at: 1 put: 30.
	w var: v breed: GrBreedId nodesBreedNo at: 2 put: 40.
	w var: v breed: GrBreedId nodesBreedNo at: 3 put: 20.
	b := self newGenerator.
	b minVar: v breed: GrBreedId nodesBreedNo.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 3