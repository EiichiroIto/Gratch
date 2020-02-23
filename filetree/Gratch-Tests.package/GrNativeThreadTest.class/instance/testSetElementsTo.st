test
testSetElementsTo
	| w t v |
	w := self newWorld.
	w createNodes: 3.
	v := (w breedOf: GrBreedId nodesBreedNo) addList: 'a'.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: 0.
	t push: GrCommandId allNodesCommandNo.
	t push: v.
	t setElementsTo.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 1) equals: 1.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 2) equals: 2.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 3) equals: 3