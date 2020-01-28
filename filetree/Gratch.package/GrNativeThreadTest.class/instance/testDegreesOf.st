test
testDegreesOf
	| w t |
	w := self newWorld.
	w createNodes: 4.
	w createEdges: 2.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 2.
	w n2At: 2 put: 2.
	w n1At: 3 put: 1.
	w n2At: 3 put: 3.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: 1.
	t degreesOf.
	self assert: t pop equals: 2.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: 2.
	t degreesOf.
	self assert: t pop equals: 3.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: 3.
	t degreesOf.
	self assert: t pop equals: 1.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t push: 4.
	t degreesOf.
	self assert: t pop equals: 0.