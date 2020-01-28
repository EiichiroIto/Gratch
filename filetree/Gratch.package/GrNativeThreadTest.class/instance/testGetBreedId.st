test
testGetBreedId
	| w t |
	w := self newWorld.
	w createNodes: 4.
	w createEdges: 2.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 3.
	w n2At: 2 put: 4.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t getBreedId.
	self assert: t pop equals: GrBreedId nodesBreedNo.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t getBreedId.
	self assert: t pop equals: GrBreedId nodesBreedNo.

	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 2.
	t getBreedId.
	self assert: t pop equals: GrBreedId edgesBreedNo.

	t := self newThread: w.
	t forBreedNo: GrBreedId graphBreedNo index: 1.
	t getBreedId.
	self assert: t pop equals: GrBreedId graphBreedNo.