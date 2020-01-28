test
testMaxElement
	| w t v |
	w := self newWorld.
	w createNodes: 3.
	v := (w breedOf: GrBreedId nodesBreedNo) addVariable: 'a'.
	w var: v breed: GrBreedId nodesBreedNo at: 1 put: 30.
	w var: v breed: GrBreedId nodesBreedNo at: 2 put: 40.
	w var: v breed: GrBreedId nodesBreedNo at: 3 put: 20.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: v.
	t push: GrBreedId nodesBreedNo.
	t maxElement.
	self assert: t pop equals: 2