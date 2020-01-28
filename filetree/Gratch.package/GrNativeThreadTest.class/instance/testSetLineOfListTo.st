test
testSetLineOfListTo
	| w t v |
	w := self newWorld.
	w createNodes: 1.
	v := (w breedOf: GrBreedId nodesBreedNo) addList: 'a'.
	w var: v breed: GrBreedId nodesBreedNo list: 1 add: 10.
	w var: v breed: GrBreedId nodesBreedNo list: 1 add: 20.
	w var: v breed: GrBreedId nodesBreedNo list: 1 add: 30.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: 2.
	t push: 40.
	t push: v.
	t setLineOfListTo.
	self assert: t stack size equals: 0.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 1) equals: 10.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 2) equals: 40.
	self assert: (w var: v breed: GrBreedId nodesBreedNo list: 1 at: 3) equals: 30