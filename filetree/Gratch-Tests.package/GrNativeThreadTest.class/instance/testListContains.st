test
testListContains
	| w t v |
	w := self newWorld.
	w createNodes: 1.
	v := (w breedOf: GrBreedId nodesBreedNo) addList: 'a'.
	w var: v breed: GrBreedId nodesBreedNo list: 1 add: 10.
	w var: v breed: GrBreedId nodesBreedNo list: 1 add: 20.
	w var: v breed: GrBreedId nodesBreedNo list: 1 add: 30.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: v.
	t push: 10.
	t listContains.
	self assert: t stack size equals: 1.
	self assert: t pop equals: 1.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: v.
	t push: 40.
	t listContains.
	self assert: t stack size equals: 1.
	self assert: t pop equals: 0