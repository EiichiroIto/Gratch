test
testAppendToList
	| w t v |
	w := self newWorld.
	t := self newThread: w.
	w createNodes: 1.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	v := (w breedOf: GrBreedId nodesBreedNo) addList: 'a'.
	t push: v.
	t push: 123.
	t appendToList.
	t push: v.
	t push: 456.
	t appendToList.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 1) equals: 123.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 2) equals: 456.
	self assert: t stack size equals: 0.