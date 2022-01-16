test
testComputeVar
	| w t v |
	w := self newWorld.
	w createNodes: 3.
	v := (w breedOf: GrBreedId nodesBreedNo) addVariable: 'a'.
	w var: v breed: GrBreedId nodesBreedNo at: 1 put: 30.
	w var: v breed: GrBreedId nodesBreedNo at: 2 put: 40.
	w var: v breed: GrBreedId nodesBreedNo at: 3 put: 20.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: GrCommandId maxElementCommandNo.
	t push: v.
	t push: GrBreedId nodesBreedNo.
	t computeVar.
	self assert: t pop equals: 2.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: GrCommandId minElementCommandNo.
	t push: v.
	t push: GrBreedId nodesBreedNo.
	t computeVar.
	self assert: t pop equals: 3