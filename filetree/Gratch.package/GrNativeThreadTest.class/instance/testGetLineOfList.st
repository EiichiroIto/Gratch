test
testGetLineOfList
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
	t push: 2.
	t getLineOfList.
	self assert: t stack size equals: 1.
	self assert: t pop equals: 20